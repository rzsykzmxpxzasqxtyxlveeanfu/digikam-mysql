SELECT
	YEAR(ii.creationDate)   AS year,
  MONTH(ii.creationDate)  AS month,
  COUNT(ii.imageid)       AS num
FROM
	Images AS im
INNER JOIN
  ImageInformation AS ii
ON
	im.id = ii.imageid
GROUP BY
	YEAR(ii.creationDate),
  MONTH(ii.creationDate)
ORDER BY
	year ASC,
  month ASC
