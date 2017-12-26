
(cl:in-package :asdf)

(defsystem "basic_test-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "basic" :depends-on ("_package_basic"))
    (:file "_package_basic" :depends-on ("_package"))
  ))