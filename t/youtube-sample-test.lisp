(in-package :cl-user)
(defpackage youtube-sample-test
  (:use :cl :prove :youtube-sample))
(in-package #:youtube-sample-test)

(plan 1)
(subtest "create-urlテスト"
		 (is (youtube-sample:create-url *api-main-url* "part" "overload" t)
			 "https://www.googleapis.com/youtube/v3/search?part=overload")
		 (is (youtube-sample:create-url (youtube-sample:create-url *api-main-url* "part" "overload" t)
										"forMine"
										"false")
			 "https://www.googleapis.com/youtube/v3/search?part=overload&forMine=false"))
(finalize)
