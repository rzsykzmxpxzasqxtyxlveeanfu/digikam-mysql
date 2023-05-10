SELECT
  a.relativePath,
  COUNT(it.tagid) AS num,
  t.name
FROM
  Images AS i
INNER JOIN
  ImageTags AS it
ON
  i.id = it.imageid
INNER JOIN
  Tags AS t
ON
  it.tagid = t.id
INNER JOIN
  Albums AS a
ON
  i.album = a.id
WHERE
  t.pid = 18 -- tag with id 18 = people/faces
GROUP BY
  i.album,
  it.tagid;
