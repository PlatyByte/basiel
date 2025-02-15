create table dnd_images
(
    image_url text not null primary key,
    short_description text,
    description text
);

create table dnd_videos
(
    youtube_id text not null primary key,
    short_description text,
    description text
);
