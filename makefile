# from: https://github.com/jjmutumi/tus_client


BOILERPLATE_FSPATH=../boot/boilerplate

include $(BOILERPLATE_FSPATH)/help.mk
include $(BOILERPLATE_FSPATH)/gitr.mk

EX_FSPATH=$(PWD)/example

print:
	@echo EX_FSPATH: $(EX_FSPATH)

open:
	open $(EX_FSPATH)

# Not used but might need to use the Tusd code to do asyn upload of the image.
STORE_FSPATH=$(HOME)/Library/Caches/com.example/example

store-create:
	mkdir -p $(STORE_FSPATH)
store-open:
	ls -al $(STORE_FSPATH)


flu-web-init:
	cd $(EX_FSPATH) && flutter create .
flu-web-run:
	cd $(EX_FSPATH) && flutter run -d chrome
flu-web-build:
	cd $(EX_FSPATH) && flutter build web --release --csp --no-source-maps --pwa-strategy none
flu-web-serve:
	# serves the flu-web-build
	go run serve.go -d $(EX_FSPATH)/build/web -p 8080




flu-desk-init:
	cd $(EX_FSPATH) && hover init
flu-desk-plugins:
	# Have to go in and fix the import of the File picker in example/go
	cd $(EX_FSPATH) && hover plugins get

flu-desk-run:
	# WORKS 
	cd $(EX_FSPATH) && hover run
flu-desk-build:
	cd $(EX_FSPATH) && hover build darwin --release
	#cd $(EX_FSPATH) && hover build windows --release
flu-desk-pack-init:
	cd $(EX_FSPATH) && hover init-packaging darwin-pkg
flu-desk-pack:
	cd $(EX_FSPATH) && hover build darwin-bundle --release
	cd $(EX_FSPATH) && hover build darwin-pkg --release

flu-mob-build:
	cd $(EX_FSPATH) && flutter build apk --release --shrink --target-platform android-arm,android-arm64,android-x64 --split-per-abi

# Playing with the new way flutter does lang stuf
# See_https://github.com/flutter/gallery/tree/master/lib/l10n

lang-gen:
	# not working
	flutter gen-l10n \
		--template-arb-file=intl_en.arb \
		--output-localization-file=gallery_localizations.dart \
		--output-class=feedbackLocalizations

lang-gen1:
	# not working
	dart ./tool/l10n_cli/main.dart
