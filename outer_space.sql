CREATE DATABASE outer_space;

CREATE TABLE stars(
    name VARCHAR(50) PRIMARY KEY,
    temp_in_kelvin INT
);

CREATE TABLE planets(
    name VARCHAR(50) PRIMARY KEY,
    orbital_period_in_years NUMERIC(10,3),
    star VARCHAR(50) NOT NULL REFERENCES stars
);

CREATE TABLE moons(
    name VARCHAR(50) PRIMARY KEY,
    planet VARCHAR(50) NOT NULL REFERENCES planets
);

INSERT INTO stars
    (name, temp_in_kelvin)
    VALUES
    ('The Sun', 5800),
    ('Proxima Centauri', 3042),
    ('Gliese 876', 3192)


INSERT INTO planets
    (name, orbital_period_in_years, star)
    VALUES
    ('Earth', 1.00, 'The Sun'),
    ('Mars', 1.882, 'The Sun'),
    ('Venus', 0.62, 'The Sun'),
    ('Proxima Centauri b', 0.03, 'Proxima Centauri'),
    ('Gliese 876 b', 0.236, 'Gliese 876')


INSERT INTO moons
    (name, planet)
    VALUES
    ('The Moon', 'Earth'),
    ('Phobos', 'Mars'),
    ('Deimos', 'Mars')

