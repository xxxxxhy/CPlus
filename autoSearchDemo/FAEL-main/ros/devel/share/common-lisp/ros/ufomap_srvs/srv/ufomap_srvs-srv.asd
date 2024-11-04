
(cl:in-package :asdf)

(defsystem "ufomap_srvs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :ufomap_msgs-msg
)
  :components ((:file "_package")
    (:file "ClearVolume" :depends-on ("_package_ClearVolume"))
    (:file "_package_ClearVolume" :depends-on ("_package"))
    (:file "GetMap" :depends-on ("_package_GetMap"))
    (:file "_package_GetMap" :depends-on ("_package"))
    (:file "Reset" :depends-on ("_package_Reset"))
    (:file "_package_Reset" :depends-on ("_package"))
    (:file "SaveMap" :depends-on ("_package_SaveMap"))
    (:file "_package_SaveMap" :depends-on ("_package"))
  ))