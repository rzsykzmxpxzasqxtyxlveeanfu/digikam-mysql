SELECT
				ar.label,
                al.id,
                al.RelativePath,
                COUNT(im.id) AS num
			FROM
            	AlbumRoots AS ar
            INNER JOIN
            	Albums AS al
                ON
                ar.id = al.albumRoot
            INNER JOIN
            	Images AS im
                ON
                al.id = im.album
            GROUP BY
            	al.id
            ORDER BY 
            	label ASC,
                RelativePath ASC
