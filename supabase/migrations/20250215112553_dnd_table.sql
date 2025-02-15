create table "public"."dnd_images" (
    "image_url" text not null,
    "short_description" text,
    "description" text
);

create table "public"."dnd_videos" (
    "youtube_id" text not null,
    "short_description" text,
    "description" text
);
