;;;;classe mammifere

(defclass Mammifere ()
  (
   (recouvert
     :initform 'poils ;valeur par defaut
     :accessor get_recouvert ;getteur
     :documentation "peau recouverte de...")
   (respiration 
     :initform 'poumons ;valeur par defaut
     :accessor get_respiration ;getteur
     :documentation "organe de respiration")

   
   )
  )

; Exemple pour creer une instance de mammifere
(setf mammifere (make-instance 'Mammifere))
;(format t "caracteristiques de mammifere ~d~%" (get_recouvert chat))
;(format t "caracteristiques de mammifere ~d~%" (get_respiration chat))
