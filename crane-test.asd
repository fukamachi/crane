(defsystem crane-test
  :author "Fernando Borretti"
  :license "MIT"
  :depends-on (:crane
               :fiveam)
  :components ((:module "t"
                :serial t
                :components
                ((:file "config")
                 (:file "utils")
                 (:file "connect")
                 (:file "meta")
                 (:file "migration")
                 (:file "queries")
                 (:file "foreign"))))
  :perform (load-op :after (op c) (asdf:clear-system c)))
