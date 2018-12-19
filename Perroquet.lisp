;;;;classe perroquet
(load "Oiseau.lisp")

(defclass Perroquet (Oiseau)
  (



   (alimentation
     :initform 'herbivore ;valeur par defaut
     :accessor get_alimentation ;getteur
     :documentation "type d'alimentation")

  (dangereux ;liste_car est un attribut de perroquet
     :initform 'non ;les valeurs par defaut
     :accessor get_dangereux ;getteur
     :documentation "boolean qui indique si l'animal est dangereux pour l'homme")
 
  (lieu ;
     :initform 'air ;valeur par defaut
     :accessor get_lieu ;getteur
     :documentation "lieu ou l'animal vit habituellement") 

  ;(class-name name "perroquet")
  
  )



  )

; Exemple pour creer une instance de perroquet
(setf perroquet (make-instance 'Perroquet))
;(format t (class-name perroquet))
(format t "alimentation : ~d~%" (get_alimentation perroquet))
(format t "est dangereux : ~d~%" (get_dangereux perroquet))
(format t "habituellement vit : ~d~%" (get_lieu perroquet))


;slots indirects
(format t "recouvert de : ~d~%" (get_recouvert perroquet))
(format t "respire avec : ~d~%" (get_respiration perroquet))
