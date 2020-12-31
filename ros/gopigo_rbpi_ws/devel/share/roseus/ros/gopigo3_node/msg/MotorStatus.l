;; Auto-generated. Do not edit!


(when (boundp 'gopigo3_node::MotorStatus)
  (if (not (find-package "GOPIGO3_NODE"))
    (make-package "GOPIGO3_NODE"))
  (shadow 'MotorStatus (find-package "GOPIGO3_NODE")))
(unless (find-package "GOPIGO3_NODE::MOTORSTATUS")
  (make-package "GOPIGO3_NODE::MOTORSTATUS"))

(in-package "ROS")
;;//! \htmlinclude MotorStatus.msg.html


(defclass gopigo3_node::MotorStatus
  :super ros::object
  :slots (_low_voltage _overloaded _power _encoder _speed ))

(defmethod gopigo3_node::MotorStatus
  (:init
   (&key
    ((:low_voltage __low_voltage) nil)
    ((:overloaded __overloaded) nil)
    ((:power __power) 0)
    ((:encoder __encoder) 0.0)
    ((:speed __speed) 0.0)
    )
   (send-super :init)
   (setq _low_voltage __low_voltage)
   (setq _overloaded __overloaded)
   (setq _power (round __power))
   (setq _encoder (float __encoder))
   (setq _speed (float __speed))
   self)
  (:low_voltage
   (&optional __low_voltage)
   (if __low_voltage (setq _low_voltage __low_voltage)) _low_voltage)
  (:overloaded
   (&optional __overloaded)
   (if __overloaded (setq _overloaded __overloaded)) _overloaded)
  (:power
   (&optional __power)
   (if __power (setq _power __power)) _power)
  (:encoder
   (&optional __encoder)
   (if __encoder (setq _encoder __encoder)) _encoder)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; bool _low_voltage
    1
    ;; bool _overloaded
    1
    ;; int8 _power
    1
    ;; float32 _encoder
    4
    ;; float32 _speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _low_voltage
       (if _low_voltage (write-byte -1 s) (write-byte 0 s))
     ;; bool _overloaded
       (if _overloaded (write-byte -1 s) (write-byte 0 s))
     ;; int8 _power
       (write-byte _power s)
     ;; float32 _encoder
       (sys::poke _encoder (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _low_voltage
     (setq _low_voltage (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _overloaded
     (setq _overloaded (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int8 _power
     (setq _power (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _power 127) (setq _power (- _power 256)))
   ;; float32 _encoder
     (setq _encoder (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get gopigo3_node::MotorStatus :md5sum-) "fa9d221cf281ffba79b583b9dd588c6f")
(setf (get gopigo3_node::MotorStatus :datatype-) "gopigo3_node/MotorStatus")
(setf (get gopigo3_node::MotorStatus :definition-)
      "bool low_voltage
bool overloaded
int8 power      # PWM duty cycle -100 ... 100
float32 encoder # degree
float32 speed   # degree per second

")



(provide :gopigo3_node/MotorStatus "fa9d221cf281ffba79b583b9dd588c6f")


