
(cl:in-package :asdf)

(defsystem "traversability_analysis-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "TerrainGrid" :depends-on ("_package_TerrainGrid"))
    (:file "_package_TerrainGrid" :depends-on ("_package"))
    (:file "TerrainMap" :depends-on ("_package_TerrainMap"))
    (:file "_package_TerrainMap" :depends-on ("_package"))
  ))