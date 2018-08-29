# xilinx-v2018.1
KBRANCH := "master"
SRCREV := "15b23f7fa80ed8166af46fb4dd971dbc12d46ad2"

FILESEXTRAPATHS_prepend := "${THISDIR}/linux-xlnx/${LINUX_VERSION}:"

# Patches
SRC_URI_append_zynqmp += "file://0001-zynqmp-zcu102-Enable-has-io-mode-and-50-MHz-max-spi-.patch"
SRC_URI_append_zynqmp += "file://0002-spi-zynqmp-Fix-for-qspi-dma-when-accessing-address-s.patch"
SRC_URI_append_zynqmp += "file://0003-spi-spi-zynqmp-gqspi-use-dma-mode-only-if-the-buffer.patch"
SRC_URI_append_zynqmp += "file://0004-mtd-spi-nor-Update-erasesize-if-dual-parallel-config.patch"
SRC_URI_append_zynqmp += "file://0005-spi-spi-zynqmp-gqspi-Removed-the-interrupts-not-requ.patch"
SRC_URI_append_zynqmp += "file://0006-spi-zynqmp-Add-support-for-runtime-idle.patch"
SRC_URI_append_zynqmp += "file://0007-mtd-nand-Arasan-Fix-initialization-of-controller-str.patch"
SRC_URI_append_zynqmp += "file://0008-spi-Increase-SPI-transfer-timeout-value.patch"
SRC_URI_append_zynqmp += "file://0009-spi-zynqmp-gqspi-Increase-chip-select-timeout-value.patch"
SRC_URI_append_zynqmp += "file://0010-ubi-Fix-race-condition-between-ubi-volume-creation-a.patch"
SRC_URI_append_zynqmp += "file://0011-ubi-block-Fix-locking-for-idr_alloc-idr_remove.patch"
SRC_URI_append_zynqmp += "file://0012-mtd-ubi-wl-Fix-error-return-code-in-ubi_wl_init.patch"
SRC_URI_append_zynqmp += "file://0013-ubi-Fix-error-for-write-access.patch"

# Configuration fragments
SRC_URI_append += "file://enable-ubi-and-ubifs.cfg"
SRC_URI_append += "file://disable-spi-nor-4k-sectors.cfg"
#SRC_URI_append += "file://preempt.cfg"

