
    alter table usuario_comentario 
        drop constraint FK_4cpsqt5813qe8tr2q7bigxjdq if exists;

    alter table usuario_comentario 
        drop constraint FK_2i7fwa4yexar57q2futpeekf8 if exists;

    alter table usuario_empresario_servicio 
        drop constraint FK_no75wo992pj9olt4ua9sayovt if exists;

    alter table usuario_empresario_servicio 
        drop constraint FK_k00krc82t6bb5rvtiqcahmkmw if exists;

    alter table usuario_promotor_actividad 
        drop constraint FK_pcqjfdn3cecgffr9g8l73nygl if exists;

    alter table usuario_promotor_actividad 
        drop constraint FK_smdxvx9h2rwrxt4hovtf8pghs if exists;

    drop table actividad if exists;

    drop table comentario if exists;

    drop table servicio if exists;

    drop table usuario if exists;

    drop table usuario_comentario if exists;

    drop table usuario_empresario_servicio if exists;

    drop table usuario_promotor if exists;

    drop table usuario_promotor_actividad if exists;

    create table actividad (
        id bigint generated by default as identity,
        version bigint not null,
        activo boolean not null,
        fecha_activo timestamp not null,
        fecha_inactivo timestamp not null,
        nombre_actividad varchar(255) not null,
        resumen_actividad varchar(1000) not null,
        primary key (id)
    );

    create table comentario (
        id bigint generated by default as identity,
        version bigint not null,
        descripcion varchar(1000) not null,
        fecha_cierre timestamp not null,
        fecha_creacion timestamp not null,
        titulo varchar(255) not null,
        primary key (id)
    );

    create table servicio (
        id bigint generated by default as identity,
        version bigint not null,
        activo boolean not null,
        fecha_activo timestamp not null,
        fecha_inactivo timestamp not null,
        nombre_servicio varchar(255) not null,
        resumen_servicio varchar(1000) not null,
        primary key (id)
    );

    create table usuario (
        id bigint generated by default as identity,
        version bigint not null,
        email varchar(255) not null,
        password varchar(255) not null,
        class varchar(255) not null,
        apellido varchar(255),
        ciudad varchar(255),
        departamento varchar(255),
        edad integer,
        fecha_nacimiento varchar(255),
        nombre varchar(255),
        ocupacion varchar(255),
        pais varchar(255),
        sexo varchar(255),
        matricula_mercantil varchar(255),
        nombre_empresa varchar(255),
        primary key (id)
    );

    create table usuario_comentario (
        usuario_comentario_id bigint,
        comentario_id bigint
    );

    create table usuario_empresario_servicio (
        usuario_empresario_servicios_id bigint,
        servicio_id bigint
    );

    create table usuario_promotor (
        id bigint generated by default as identity,
        version bigint not null,
        nombre_razon_cultural varchar(255) not null,
        primary key (id)
    );

    create table usuario_promotor_actividad (
        usuario_promotor_actividades_id bigint,
        actividad_id bigint
    );

    alter table usuario_comentario 
        add constraint FK_4cpsqt5813qe8tr2q7bigxjdq 
        foreign key (comentario_id) 
        references comentario;

    alter table usuario_comentario 
        add constraint FK_2i7fwa4yexar57q2futpeekf8 
        foreign key (usuario_comentario_id) 
        references usuario;

    alter table usuario_empresario_servicio 
        add constraint FK_no75wo992pj9olt4ua9sayovt 
        foreign key (servicio_id) 
        references servicio;

    alter table usuario_empresario_servicio 
        add constraint FK_k00krc82t6bb5rvtiqcahmkmw 
        foreign key (usuario_empresario_servicios_id) 
        references usuario;

    alter table usuario_promotor_actividad 
        add constraint FK_pcqjfdn3cecgffr9g8l73nygl 
        foreign key (actividad_id) 
        references actividad;

    alter table usuario_promotor_actividad 
        add constraint FK_smdxvx9h2rwrxt4hovtf8pghs 
        foreign key (usuario_promotor_actividades_id) 
        references usuario_promotor;
