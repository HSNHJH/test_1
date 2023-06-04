
(cl:in-package :asdf)

(defsystem "servicetest-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "hjh" :depends-on ("_package_hjh"))
    (:file "_package_hjh" :depends-on ("_package"))
  ))