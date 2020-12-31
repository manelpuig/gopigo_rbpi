;; Auto-generated. Do not edit!


(when (boundp 'gopigo3_node::MotorStatusLR)
  (if (not (find-package "GOPIGO3_NODE"))
    (make-package "GOPIGO3_NODE"))
  (shadow 'MotorStatusLR (find-package "GOPIGO3_NODE")))
(unless (find-package "GOPIGO3_NODE::MOTORSTATUSLR")
  (make-package "GOPIGO3_NODE::MOTORSTATUSLR"))

(in-package "ROS")
;;//! \htmlinclude MotorStatusLR.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass gopigo3_node::MotorStatusLR
  :super ros::object
  :slots (_header _left _right ))

(defmethod gopigo3_node::MotorStatusLR
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:left __left) (instance gopigo3_node::MotorStatus :init))
    ((:right __right) (instance gopigo3_node::MotorStatus :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _left __left)
   (setq _right __right)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:left
   (&rest __left)
   (if (keywordp (car __left))
       (send* _left __left)
     (progn
       (if __left (setq _left (car __left)))
       _left)))
  (:right
   (&rest __right)
   (if (keywordp (car __right))
       (send* _right __right)
     (progn
       (if __right (setq _right (car __right)))
       _right)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; gopigo3_node/MotorStatus _left
    (send _left :serialization-length)
    ;; gopigo3_node/MotorStatus _right
    (send _right :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; gopigo3_node/MotorStatus _left
       (send _left :serialize s)
     ;; gopigo3_node/MotorStatus _right
       (send _right :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; gopigo3_node/MotorStatus _left
     (send _left :deserialize buf ptr-) (incf ptr- (send _left :serialization-length))
   ;; gopigo3_node/MotorStatus _right
     (send _right :deserialize buf ptr-) (incf ptr- (send _right :serialization-length))
   ;;
   self)
  )

(setf (get gopigo3_node::MotorStatusLR :md5sum-) "924fb1e61934a72c1fa7cdf1620e9fa4")
(setf (get gopigo3_node::MotorStatusLR :datatype-) "gopigo3_node/MotorStatusLR")
(setf (get gopigo3_node::MotorStatusLR :definition-)
      "Header header
MotorStatus left
MotorStatus right

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: gopigo3_node/MotorStatus
bool low_voltage
bool overloaded
int8 power      # PWM duty cycle -100 ... 100
float32 encoder # degree
float32 speed   # degree per second

")



(provide :gopigo3_node/MotorStatusLR "924fb1e61934a72c1fa7cdf1620e9fa4")


