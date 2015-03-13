/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20150204-64 [Feb  4 2015]
 * Copyright (c) 2000 - 2015 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-1.aml, Fri Mar 13 03:12:10 2015
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000014C (332)
 *     Revision         0x01
 *     Checksum         0x29
 *     OEM ID           "AMICPU"
 *     OEM Table ID     "PROC"
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20150204 (538247684)
 */
DefinitionBlock ("SSDT-1.aml", "SSDT", 1, "AMICPU", "PROC", 0x00000001)
{

    External (_PR_.CST_, MethodObj)    // 0 Arguments
    External (_PR_.OSC_, MethodObj)    // 4 Arguments
    External (_PR_.PDC_, MethodObj)    // 1 Arguments

    Scope (\_PR)
    {
        Processor (CPU0, 0x01, 0x00000410, 0x06)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                \_PR.PDC (Arg0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Return (\_PR.OSC (Arg0, Arg1, Arg2, Arg3))
            }

            Method (_CST, 0, NotSerialized)  // _CST: C-States
            {
                Return (\_PR.CST ())
            }
        }

        Processor (CPU1, 0x02, 0x00000410, 0x06)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                \_PR.PDC (Arg0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Return (\_PR.OSC (Arg0, Arg1, Arg2, Arg3))
            }

            Method (_CST, 0, NotSerialized)  // _CST: C-States
            {
                Return (\_PR.CST ())
            }
        }

        Processor (CPU2, 0x03, 0x00000410, 0x06)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                \_PR.PDC (Arg0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Return (\_PR.OSC (Arg0, Arg1, Arg2, Arg3))
            }

            Method (_CST, 0, NotSerialized)  // _CST: C-States
            {
                Return (\_PR.CST ())
            }
        }

        Processor (CPU3, 0x04, 0x00000410, 0x06)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                \_PR.PDC (Arg0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Return (\_PR.OSC (Arg0, Arg1, Arg2, Arg3))
            }

            Method (_CST, 0, NotSerialized)  // _CST: C-States
            {
                Return (\_PR.CST ())
            }
        }
    }
}

