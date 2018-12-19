;;;;classe poisson

(defclass Poisson ()
  (
   (recouvert
     :initform 'ecailles ;valeur par defaut
     :accessor get_recouvert ;getteur
     :documentation "peau recouverte de...")
   (respiration 
     :initform 'branchies ;valeur par defaut
     :accessor get_respiration ;getteur
     :documentation "organe de respiration")

   
   )
  )

; Exemple pour creer une instance de poisson
(setf poisson (make-instance 'Poisson))
;(format t "caracteristiques de poisson ~d~%" (get_recouvert chat))
;(format t "caracteristiques de poisson ~d~%" (get_respiration chat))
