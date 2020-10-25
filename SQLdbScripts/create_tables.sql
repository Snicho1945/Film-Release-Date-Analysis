-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/y0DIca
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- The Movies Dataset

CREATE TABLE "movies_metadata" (
    "id" varchar   NOT NULL,
    "title" varchar   NOT NULL,
    "original_title" varchar   NOT NULL,
    "status" varchar   NOT NULL,
    "release_date" date   NOT NULL,
    "company" varchar   NOT NULL,
    "revenue" bigint   NOT NULL,
    "budget" bigint   NOT NULL,
    "adult" boolean   NOT NULL,
    "belongs_to_collection" boolean   NOT NULL,
    "original_language" varchar   NOT NULL,
    "popularity" decimal   NOT NULL,
    "country" varchar   NOT NULL,
    "runtime" int   NOT NULL,
    "spoken_languages" int   NOT NULL,
    "tagline" varchar   NOT NULL,
    "video" boolean   NOT NULL,
    "vote_average" decimal   NOT NULL,
    "vote_count" int   NOT NULL,
    CONSTRAINT "pk_movies_metadata" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "genres" (
    "movieId" varchar   NOT NULL,
    "drama" boolean   NOT NULL,
    "comedy" boolean   NOT NULL,
    "thriller" boolean   NOT NULL,
    "romance" boolean   NOT NULL,
    "action" boolean   NOT NULL,
    "horror" boolean   NOT NULL,
    "crime" boolean   NOT NULL,
    "documentary" boolean   NOT NULL,
    "adventure" boolean   NOT NULL,
    "science_fiction" boolean   NOT NULL,
    "family" boolean   NOT NULL,
    "mystery" boolean   NOT NULL,
    "fantasy" boolean   NOT NULL,
    "animation" boolean   NOT NULL,
    "foreign" boolean   NOT NULL,
    "music" boolean   NOT NULL,
    "history" boolean   NOT NULL,
    "war" boolean   NOT NULL,
    "western" boolean   NOT NULL,
    "tv_movie" boolean   NOT NULL,
    "others" boolean   NOT NULL,
    CONSTRAINT "pk_genres" PRIMARY KEY (
        "movieId"
     )
);

CREATE TABLE "links" (
    "imdbId" int   NOT NULL,
    "movieId" varchar   NOT NULL,
    "tmdbid" varchar   NOT NULL,
    CONSTRAINT "pk_links" PRIMARY KEY (
        "movieId"
     )
);

CREATE TABLE "credits" (
    "id" varchar   NOT NULL,
    "cast" varchar   NOT NULL,
    "crew" varchar   NOT NULL,
    CONSTRAINT "pk_credits" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "keywords" (
    "id" varchar   NOT NULL,
    "keywords" varchar   NOT NULL,
    CONSTRAINT "pk_keywords" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "ratings" (
    "userid" int   NOT NULL,
    "id" varchar   NOT NULL,
    "rating" decimal   NOT NULL,
    "timestamp" timestamp   NOT NULL,
    CONSTRAINT "pk_ratings" PRIMARY KEY (
        "userid","id"
     )
);

ALTER TABLE "genres" ADD CONSTRAINT "fk_genres_movieId" FOREIGN KEY("movieId")
REFERENCES "movies_metadata" ("id");

ALTER TABLE "links" ADD CONSTRAINT "fk_links_movieId" FOREIGN KEY("movieId")
REFERENCES "movies_metadata" ("id");

ALTER TABLE "credits" ADD CONSTRAINT "fk_credits_id" FOREIGN KEY("id")
REFERENCES "movies_metadata" ("id");

ALTER TABLE "keywords" ADD CONSTRAINT "fk_keywords_id" FOREIGN KEY("id")
REFERENCES "movies_metadata" ("id");

ALTER TABLE "ratings" ADD CONSTRAINT "fk_ratings_id" FOREIGN KEY("id")
REFERENCES "movies_metadata" ("id");

