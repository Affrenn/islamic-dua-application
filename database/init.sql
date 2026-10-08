CREATE DATABASE IF NOT EXISTS islamic_app;

USE islamic_app;

CREATE TABLE IF NOT EXISTS duas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(200),
    dua_text TEXT,
    transliteration TEXT,
    meaning TEXT
);

INSERT INTO duas (title, dua_text, transliteration, meaning)
VALUES
(
    'Dua Before Eating',
    'Bismillah',
    'Bismillah',
    'In the name of Allah'
),
(
    'Dua After Eating',
    'Alhamdulillah',
    'Alhamdulillah',
    'All praise is due to Allah'
),
(
    'Dua for Knowledge',
    'Rabbi zidni ilma',
    'Rabbi zidni ilma',
    'My Lord, increase me in knowledge'
);
