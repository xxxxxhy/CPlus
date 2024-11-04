
(cl:in-package :asdf)

(defsystem "ufomap_manager-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
               :ufomap_msgs-msg
)
  :components ((:file "_package")
    (:file "CellCode" :depends-on ("_package_CellCode"))
    (:file "_package_CellCode" :depends-on ("_package"))
    (:file "UfomapWithFrontiers" :depends-on ("_package_UfomapWithFrontiers"))
    (:file "_package_UfomapWithFrontiers" :depends-on ("_package"))
  ))