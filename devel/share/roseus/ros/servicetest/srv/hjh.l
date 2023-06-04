;; Auto-generated. Do not edit!


(when (boundp 'servicetest::hjh)
  (if (not (find-package "SERVICETEST"))
    (make-package "SERVICETEST"))
  (shadow 'hjh (find-package "SERVICETEST")))
(unless (find-package "SERVICETEST::HJH")
  (make-package "SERVICETEST::HJH"))
(unless (find-package "SERVICETEST::HJHREQUEST")
  (make-package "SERVICETEST::HJHREQUEST"))
(unless (find-package "SERVICETEST::HJHRESPONSE")
  (make-package "SERVICETEST::HJHRESPONSE"))

(in-package "ROS")





(defclass servicetest::hjhRequest
  :super ros::object
  :slots (_age _name _school ))

(defmethod servicetest::hjhRequest
  (:init
   (&key
    ((:age __age) 0)
    ((:name __name) "")
    ((:school __school) "")
    )
   (send-super :init)
   (setq _age (round __age))
   (setq _name (string __name))
   (setq _school (string __school))
   self)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:school
   (&optional __school)
   (if __school (setq _school __school)) _school)
  (:serialization-length
   ()
   (+
    ;; int16 _age
    2
    ;; string _name
    4 (length _name)
    ;; string _school
    4 (length _school)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _age
       (write-word _age s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _school
       (write-long (length _school) s) (princ _school s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _age
     (setq _age (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _school
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _school (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass servicetest::hjhResponse
  :super ros::object
  :slots (_memory ))

(defmethod servicetest::hjhResponse
  (:init
   (&key
    ((:memory __memory) "")
    )
   (send-super :init)
   (setq _memory (string __memory))
   self)
  (:memory
   (&optional __memory)
   (if __memory (setq _memory __memory)) _memory)
  (:serialization-length
   ()
   (+
    ;; string _memory
    4 (length _memory)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _memory
       (write-long (length _memory) s) (princ _memory s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _memory
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _memory (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass servicetest::hjh
  :super ros::object
  :slots ())

(setf (get servicetest::hjh :md5sum-) "4ea70316ac12589c73d4bd02fe66905f")
(setf (get servicetest::hjh :datatype-) "servicetest/hjh")
(setf (get servicetest::hjh :request) servicetest::hjhRequest)
(setf (get servicetest::hjh :response) servicetest::hjhResponse)

(defmethod servicetest::hjhRequest
  (:response () (instance servicetest::hjhResponse :init)))

(setf (get servicetest::hjhRequest :md5sum-) "4ea70316ac12589c73d4bd02fe66905f")
(setf (get servicetest::hjhRequest :datatype-) "servicetest/hjhRequest")
(setf (get servicetest::hjhRequest :definition-)
      "
int16 age
string name
string school
---

string memory
")

(setf (get servicetest::hjhResponse :md5sum-) "4ea70316ac12589c73d4bd02fe66905f")
(setf (get servicetest::hjhResponse :datatype-) "servicetest/hjhResponse")
(setf (get servicetest::hjhResponse :definition-)
      "
int16 age
string name
string school
---

string memory
")



(provide :servicetest/hjh "4ea70316ac12589c73d4bd02fe66905f")


