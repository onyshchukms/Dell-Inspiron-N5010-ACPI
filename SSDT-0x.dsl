/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20150204-64 [Feb  4 2015]
 * Copyright (c) 2000 - 2015 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-0x.aml, Thu Mar 12 19:11:40 2015
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000003A4 (932)
 *     Revision         0x01
 *     Checksum         0xEA
 *     OEM ID           "AMI"
 *     OEM Table ID     "IST"
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "MSFT"
 *     Compiler Version 0x03000001 (50331649)
 */
DefinitionBlock ("SSDT-0x.aml", "SSDT", 1, "AMI", "IST", 0x00000001)
{

    External (_PR_.APSS, PkgObj)
    External (_PR_.P000, DeviceObj)
    External (_PR_.P001, DeviceObj)
    External (_PR_.P002, DeviceObj)
    External (_PR_.P003, DeviceObj)
    External (_PR_.PDCV, IntObj)
    External (_PR_.PTCI, PkgObj)
    External (_PR_.TSSI, PkgObj)
    External (_PR_.TSSM, PkgObj)
    External (SMI_, MethodObj)    // 2 Arguments
    External (TSTE, IntObj)

    Scope (\_PR.P000)
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
            Local0 = SMI (0xAD, 0x00)
            Return (Local0)
        }

        Name (_PSD, Package (0x01)  // _PSD: Power State Dependencies
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x00, 
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

    Scope (\_PR.P001)
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
            Local0 = SMI (0xAD, 0x00)
            Return (Local0)
        }

        Name (_PSD, Package (0x01)  // _PSD: Power State Dependencies
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x00, 
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

    Scope (\_PR.P002)
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
            Local0 = SMI (0xAD, 0x00)
            Return (Local0)
        }

        Name (_PSD, Package (0x01)  // _PSD: Power State Dependencies
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x00, 
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

    Scope (\_PR.P003)
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
            Local0 = SMI (0xAD, 0x00)
            Return (Local0)
        }

        Name (_PSD, Package (0x01)  // _PSD: Power State Dependencies
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x00, 
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

