C_OBJS = $(C_OBJS) \
  $O\7zCrc.obj
!IF defined(USE_NO_ASM) || defined(USE_C_CRC) || "$(PLATFORM)" == "ia64" || "$(PLATFORM)" == "mips" || "$(PLATFORM)" == "arm" || "$(PLATFORM)" == "arm64"
C_OBJS = $(C_OBJS) \
!ELSE
ASM_OBJS = $(ASM_OBJS) \
!ENDIF
  $O\7zCrcOpt.obj
