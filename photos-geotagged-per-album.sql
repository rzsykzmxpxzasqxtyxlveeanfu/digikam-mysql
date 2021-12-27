SELECT
  COUNT(ip.imageid) AS num
FROM
  Images AS im
INNER JOIN
  ImagePositions AS ip
ON
  im.id = ip.imageid
WHERE
  im.album = 0 // insert `images.albumid` here
GROUP BY
  im.album
