SHELL=/bin/bash
DESTDIR=
BINFILE=virt-qmod
BINDIR=${DESTDIR}/usr/bin
INFODIR=${DESTDIR}/usr/share/doc/virt-qmod
MODE=664
DIRMODE=755

.PHONY: build

install:
	@echo "            Script ${BINFILE}"
	@echo ":: Aguarde, instalando software virt-qmod em: ${BINDIR}"
	@install -Dm755 "usr/bin/${BINFILE}" "/usr/bin/${BINFILE}"
	@install -d ${INFODIR}/
	@cp Makefile README.md ${INFODIR}/
	@echo ":: Feito! ${BINFILE} software instalado em: ${BINDIR}"
	@echo
uninstall:
	@rm ${BINDIR}/${BINFILE}
	@rm -rf ${INFODIR}
	@echo "${BINFILE} foi removido."
