/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20150204-64 [Feb  4 2015]
 * Copyright (c) 2000 - 2015 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-1.aml, Thu Mar 12 19:11:32 2015
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000014E (334)
 *     Revision         0x01
 *     Checksum         0xB9
 *     OEM ID           "AMICPU"
 *     OEM Table ID     "PROC"
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "MSFT"
 *     Compiler Version 0x03000001 (50331649)
 */
DefinitionBlock ("SSDT-1.aml", "SSDT", 1, "AMICPU", "PROC", 0x00000001)
{

    External (_PR_.CST_, MethodObj)    // 0 Arguments
    External (_PR_.OSC_, MethodObj)    // 4 Arguments
    External (_PR_.PDC_, MethodObj)    // 1 Arguments

    Scope (\_PR)
    {
        Processor (P000, 0x01, 0x00000410, 0x06)
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

        Processor (P001, 0x02, 0x00000410, 0x06)
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

        Processor (P002, 0x03, 0x00000410, 0x06)
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

        Processor (P003, 0x04, 0x00000410, 0x06)
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

