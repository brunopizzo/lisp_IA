;;;;classe animal

(defclass Animal ()
  (
  	(recouvert
     :initform NIL ;valeur par defaut
     :accessor get_recouvert ;getteur
     :documentation "peau recouverte de...")
   (respiration 
     :initform NIL ;valeur par defaut
     :accessor get_respiration ;getteur
     :documentation "organe de respiration")
   (alimentation
     :initform NIL ;valeur par defaut
     :accessor get_alimentation ;getteur
     :documentation "type d'alimentation")

  (dangereux ;liste_car est un attribut de tigre
     :initform NIL ;les valeurs par defaut
     :accessor get_dangereux ;getteur
     :documentation "boolean qui indique si l'animal est dangereux pour l'homme")
 
  (lieu ;
     :initform NIL ;valeur par defaut
     :accessor get_lieu ;getteur
     :documentation "lieu ou l'animal vit habituellement") 
  )

;Exemple pour creer une instance de animal
;(setf chat (make-instance 'Animal))
;(format t "caracteristiques de animal : ~d~%" (animal-liste_car chat))
