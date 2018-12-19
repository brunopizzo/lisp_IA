;;;;classe reptile

(defclass Reptile ()
  (
   (recouvert
     :initform 'ecailles ;valeur par defaut
     :accessor get_recouvert ;getteur
     :documentation "peau recouverte de...")
   (respiration 
     :initform 'poumons ;valeur par defaut
     :accessor get_respiration ;getteur
     :documentation "organe de respiration")

   
   )
  )

; Exemple pour creer une instance de reptile
(setf reptile (make-instance 'Reptile))
;(format t "caracteristiques de reptile ~d~%" (get_recouvert chat))
;(format t "caracteristiques de reptile ~d~%" (get_respiration chat))
