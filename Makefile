PROFILE=texlive.profile

profile:
	sed "s#<TARGET>#$TARGET#g" $(PROFILE).in > $(PROFILE)
qiniu:
	qrsync conf.json
