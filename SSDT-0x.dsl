/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20150204-64 [Feb  4 2015]
 * Copyright (c) 2000 - 2015 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-0x.aml, Fri Mar 13 03:12:20 2015
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000398 (920)
 *     Revision         0x01
 *     Checksum         0x7A
 *     OEM ID           "AMI"
 *     OEM Table ID     "IST"
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20150204 (538247684)
 */
DefinitionBlock ("SSDT-0x.aml", "SSDT", 1, "AMI", "IST", 0x00000001)
{

    External (_PR_.APSS, PkgObj)
    External (_PR_.CPU0, DeviceObj)
    External (_PR_.CPU1, DeviceObj)
    External (_PR_.CPU2, DeviceObj)
    External (_PR_.CPU3, DeviceObj)
    External (_PR_.PDCV, IntObj)
    External (_PR_.PTCI, PkgObj)
    External (_PR_.TSSI, PkgObj)
    External (_PR_.TSSM, PkgObj)
    External (SMI_, MethodObj)    // 2 Arguments
    External (TSTE, IntObj)

    Scope (\_PR.CPU0)
    {
        Name (_PCT, Package (0x02)  // _PCT: Performance Control
        {
            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000199, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x10,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000198, // Address
                    ,)
            }
        })
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (APSS) /* External reference */
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilites
        {
            Local0 = SMI (0xAD, Zero)
            Return (Local0)
        }

        Name (_PSD, Package (0x01)  // _PSD: Power State Dependencies
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x04
            }
        })
        Method (_TPC, 0, NotSerialized)  // _TPC: Throttling Present Capabilities
        {
            Return (\TSTE) /* External reference */
        }

        Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
        {
            If ((PDCV & 0x04))
            {
                Return (Package (0x02)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }
                })
            }

            Return (PTCI) /* External reference */
        }

        Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
        {
            If ((PDCV & 0x04))
            {
                Return (TSSM) /* External reference */
            }

            Return (TSSI) /* External reference */
        }
    }

    Scope (\_PR.CPU1)
    {
        Name (_PCT, Package (0x02)  // _PCT: Performance Control
        {
            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000199, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x10,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000198, // Address
                    ,)
            }
        })
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (APSS) /* External reference */
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilites
        {
            Local0 = SMI (0xAD, Zero)
            Return (Local0)
        }

        Name (_PSD, Package (0x01)  // _PSD: Power State Dependencies
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x04
            }
        })
        Method (_TPC, 0, NotSerialized)  // _TPC: Throttling Present Capabilities
        {
            Return (\TSTE) /* External reference */
        }

        Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
        {
            If ((PDCV & 0x04))
            {
                Return (Package (0x02)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }
                })
            }

            Return (PTCI) /* External reference */
        }

        Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
        {
            If ((PDCV & 0x04))
            {
                Return (TSSM) /* External reference */
            }

            Return (TSSI) /* External reference */
        }
    }

    Scope (\_PR.CPU2)
    {
        Name (_PCT, Package (0x02)  // _PCT: Performance Control
        {
            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000199, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x10,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000198, // Address
                    ,)
            }
        })
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (APSS) /* External reference */
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilites
        {
            Local0 = SMI (0xAD, Zero)
            Return (Local0)
        }

        Name (_PSD, Package (0x01)  // _PSD: Power State Dependencies
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x04
            }
        })
        Method (_TPC, 0, NotSerialized)  // _TPC: Throttling Present Capabilities
        {
            Return (\TSTE) /* External reference */
        }

        Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
        {
            If ((PDCV & 0x04))
            {
                Return (Package (0x02)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }
                })
            }

            Return (PTCI) /* External reference */
        }

        Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
        {
            If ((PDCV & 0x04))
            {
                Return (TSSM) /* External reference */
            }

            Return (TSSI) /* External reference */
        }
    }

    Scope (\_PR.CPU3)
    {
        Name (_PCT, Package (0x02)  // _PCT: Performance Control
        {
            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000199, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x10,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000198, // Address
                    ,)
            }
        })
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (APSS) /* External reference */
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilites
        {
            Local0 = SMI (0xAD, Zero)
            Return (Local0)
        }

        Name (_PSD, Package (0x01)  // _PSD: Power State Dependencies
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x04
            }
        })
        Method (_TPC, 0, NotSerialized)  // _TPC: Throttling Present Capabilities
        {
            Return (\TSTE) /* External reference */
        }

        Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
        {
            If ((PDCV & 0x04))
            {
                Return (Package (0x02)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }
                })
            }

            Return (PTCI) /* External reference */
        }

        Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
        {
            If ((PDCV & 0x04))
            {
                Return (TSSM) /* External reference */
            }

            Return (TSSI) /* External reference */
        }
    }
}

