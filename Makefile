# Dependências do Arch equivalente no Ubuntu
#
# Equivalente ao depends=() do PKGBUILD:
# bash libvirt-daemon-system libvirt-clients libxml2-utils qemu-system-x86 qemu-utils virtinst util-linux pv bc pciutils dnsmasq
#
# Equivalente ao optdepends=():
# virt-viewer virt-manager libguestfs-tools bridge-utils libosinfo-bin osinfo-db ovmf

SHELL=/bin/bash
DESTDIR=
BINFILE=virt-gmod
BINDIR=${DESTDIR}/usr/bin
SERVMENUDIR=${DESTDIR}/usr/share/kio/servicemenus
DESKTOPFILE=CriarEIniciarVM.desktop
INFODIR=${DESTDIR}/usr/share/doc/virt-gmod
MODE=664
DIRMODE=755

.PHONY: build

install:
	@echo "            Script ${BINFILE}"
	@echo ":: Aguarde, instalando software virt-qmod em: ${BINDIR}"
	@install -Dm755 "usr/bin/${BINFILE}" "/usr/bin/${BINFILE}"
	@install -d ${SERVMENUDIR}/
	@install -Dm755 "usr/share/kio/servicemenus/${DESKTOPFILE}" ${SERVMENUDIR}/${DESKTOPFILE}
	@install -d ${INFODIR}/
	@cp Makefile README.md ${INFODIR}/
	@echo ":: Feito! ${BINFILE} software instalado em: ${BINDIR}"
	@echo
uninstall:
	@rm ${BINDIR}/${BINFILE}
	@rm ${SERVMENUDIR}/${DESKTOPFILE}
	@rm -rf ${INFODIR}
	@echo "${BINFILE} foi removido."
