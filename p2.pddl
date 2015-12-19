;; Block A is on the table, block B on A and there is nothing on B.  A
;; water bucket, a brush, a A blue sprayer and a red paint can are on
;; the table and clear.  The goal is to for A to be colored red and B
;; blue and the brush be clean. 

(define (problem 01)
  (:domain hw3)
  (:objects a b brush1 can1 spray1 water1)
  (:init (arm-empty)
  
  		 ;water bucket is on the table with nothing on it
  		 (on-table water1)
  		 (water water1)
  		 (clear water1)
  
  		 ;there is a block a on table and b is on a and b is clear	
         (on-table a)         
         (on b a)               
         (clear b)
         
  		 ;there is clean brush on the table with nothing on it 
  		 (brush brush1)
  		 (on-table brush1)
  		 (clear brush1)
  		 (clean brush1)
  		 
  		 ;there is a red can on the table with nothing on it
  		 (on-table can1)
  		 (clear can1)
  		 (can can1)
  		 (has-color can1 red)
  		 
  		 ;there is a blue spray on the table with  nothing on it
  		 (on-table spray1)
         (clear spray1)
         (spray spray1)
         (has-color spray1 blue)
         
         ;red and blue are color
         (color red)
         (color blue))
  
  ;goal is to have block a colored red, block b colored blue and brush be clean         		        
  (:goal (and (color a red) (color b blue) (arm-empty) (clean brush1))))
