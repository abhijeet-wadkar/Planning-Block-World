;; three blocks (A B and C) are on the table along with three sprays
;; (red, green, blue), three paint cans (red, green, blue), a water
;; bucket and a clean brush.  Paint A, B and C red, blue and green,
;; respectively. End with the arm empty and the brush clean.

(define (problem 01)
  (:domain hw3)
  (:objects a b c brush1 can1 can2 can3 spray1 spray2 spray3 water1 red green blue)
  (:init (arm-empty)
  
  		 ;there is block a on the table with nothing on it	
  		 (on-table a)
         (clear a)
         
         ;there is block b on the table with nothing on it
         (on-table b)
         (clear b)
         
         ;there is block c on the table with nothing on it
         (on-table c)
         (clear c)
  
  		 ;there is water bucket on the table with nothing on it
  		 (on-table water1)
  		 (water water1)
  		 (clear water1)
  
  		 ;there is a clean brush on the table with nothing on it
  		 (brush brush1)
  		 (on-table brush1)
  		 (clear brush1)
  		 (clean brush1)
  		 
  		 ;there is a green can on the table with nothing on it
  		 (on-table can2)
  		 (clear can2)
  		 (can can2)
  		 (has-color can2 green)
  		 
  		 ;there is a red can on the table with nothing on it
  		 (on-table can1)
  		 (clear can1)
  		 (can can1)
  		 (has-color can1 red)
  		 
  		 ;there is a blue can on the table with nothing on it
  		 (on-table can3)
  		 (clear can3)
  		 (can can3)
  		 (has-color can3 blue)
  		 
  		 ;there is a red spray on the table with nothing on it
  		 (on-table spray1)
         (clear spray1)
         (spray spray1)
         (has-color spray1 red)
         
         ;there is a green spray on the table with nothing on it
         (on-table spray2)
         (clear spray2)
         (spray spray2)
         (has-color spray2 green)
         
         ;there is a blue spray on the table with nothing on it
         (on-table spray3)
         (clear spray3)
         (spray spray3)
	     (has-color spray3 blue)

		 ;red, green and blue are colors
		 (color red)
		 (color green)
		 (color blue))      
  
  ;goal is to have block a, b, c colored red, green and blue respectively with arm empty and brush clean
  (:goal (and (color a red) (color b green) (color c blue) (arm-empty) (clean brush1))))
