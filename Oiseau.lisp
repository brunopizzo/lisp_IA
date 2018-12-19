;;;;classe oiseau

(defclass Oiseau ()
  (
   (recouvert
     :initform 'plumes ;valeur par defaut
     :accessor get_recouvert ;getteur
     :documentation "peau recouverte de...")
   (respiration 
     :initform 'poumons ;valeur par defaut
     :accessor get_respiration ;getteur
     :documentation "organe de respiration")

   
   )
  )

; Exemple pour creer une instance de oiseau
(setf oiseau (make-instance 'Oiseau))
;(format t "caracteristiques de oiseau ~d~%" (get_recouvert chat))
;(format t "caracteristiques de oiseau ~d~%" (get_respiration chat))
