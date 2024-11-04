
(cl:in-package :asdf)

(defsystem "planner-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
               :ufomap_manager-msg
)
  :components ((:file "_package")
    (:file "EdgePair" :depends-on ("_package_EdgePair"))
    (:file "_package_EdgePair" :depends-on ("_package"))
    (:file "IdPointPair" :depends-on ("_package_IdPointPair"))
    (:file "_package_IdPointPair" :depends-on ("_package"))
    (:file "PreprocessMsgs" :depends-on ("_package_PreprocessMsgs"))
    (:file "_package_PreprocessMsgs" :depends-on ("_package"))
    (:file "RoadMapMsg" :depends-on ("_package_RoadMapMsg"))
    (:file "_package_RoadMapMsg" :depends-on ("_package"))
    (:file "ViewpointsWithFrontiers" :depends-on ("_package_ViewpointsWithFrontiers"))
    (:file "_package_ViewpointsWithFrontiers" :depends-on ("_package"))
  ))