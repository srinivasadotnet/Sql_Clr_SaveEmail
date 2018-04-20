﻿--------------------------------------------------------------------------------
--     This code was generated by a tool.
--
--     Changes to this file may cause incorrect behavior and will be lost if
--     the code is regenerated.
--------------------------------------------------------------------------------

CREATE FUNCTION [dbo].[SaveEmail] (@fromEmail [nvarchar](MAX), @toEmail [nvarchar](MAX), @ccEmail [nvarchar](MAX), @bccEmail [nvarchar](MAX), @mailBody [nvarchar](MAX), @mailSubject [nvarchar](MAX), @fileName [nvarchar](MAX))
RETURNS [nvarchar](MAX)
AS EXTERNAL NAME [SQL_CLR_SaveEmail].[UserDefinedFunctions].[SaveEmail];

GO

CREATE ASSEMBLY [SQL_CLR_SaveEmail] AUTHORIZATION [dbo]
FROM 0x4D5A90000300000004000000FFFF0000B800000000000000400000000000000000000000000000000000000000000000000000000000000000000000800000000E1FBA0E00B409CD21B8014CCD21546869732070726F6772616D2063616E6E6F742062652072756E20696E20444F53206D6F64652E0D0D0A2400000000000000504500004C0103004F91D95A0000000000000000E00002210B010B00000E000000060000000000004E2D0000002000000040000000000010002000000002000004000000000000000600000000000000008000000002000000000000030060850000100000100000000010000010000000000000100000000000000000000000F42C00005700000000400000C802000000000000000000000000000000000000006000000C000000BC2B00001C0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000080000000000000000000000082000004800000000000000000000002E74657874000000540D000000200000000E000000020000000000000000000000000000200000602E72737263000000C8020000004000000004000000100000000000000000000000000000400000402E72656C6F6300000C0000000060000000020000001400000000000000000000000000004000004200000000000000000000000000000000302D0000000000004800000002000500F4220000C808000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001B3004003201000001000011000F00280500000A0F01280500000A0F05280500000A0F04280500000A2802000006130611062D12007201000070730600000A130538F4000000280700000A0A0F06280500000A280800000A2D090F06280500000A2B14280900000A13071207FE160B0000016F0A00000A000B0607721F000070280B00000A280C00000A0C00730D00000A0D00090F04280500000A6F0E00000A00090F00280500000A730F00000A6F1000000A00096F1100000A0F01280500000A6F1200000A00096F1300000A0F02280500000A6F1200000A00096F1400000A0F03280500000A6F1200000A00090F05280500000A6F1500000A00090828030000060000DE120914FE01130611062D07096F1600000A00DC0000DE1313040011046F1700000A730600000A1305DE0B0008730600000A13052B000011052A0000011C00000200860074FA00120000000000007F00911001130F000001133002002B000000020000110002280800000A2D1B03280800000A2D1304280800000A2D0B05280800000A16FE012B0116000A2B00062A001B300700E90000000300001100D010000001281800000A6F1900000A0A0672290000706F1A00000A0B0318731B00000A0C00071F2414178D110000011307110716D016000001281800000AA21107146F1C00000A0D09178D01000001130811081608A211086F1D00000A1304D003000001281800000A725F0000701F24281E00000A13051105021F2414198D0100000113081108161104A2110817178C1C000001A2110818178C1C000001A21108146F1F00000A2611046F2000000A72690000701F246F1E00000A1306110611041F2414168D01000001146F1F00000A2600DE120814FE01130911092D07086F1600000A00DC002A0000000110000002002500B0D50012000000001E02282100000A2A42534A4201000100000000000C00000076342E302E33303331390000000005006C000000D8020000237E000044030000F003000023537472696E677300000000340700007800000023555300AC070000100000002347554944000000BC0700000C01000023426C6F620000000000000002000001471502000900000000FA253300160000010000001E00000002000000040000000D000000210000000400000003000000010000000300000000000A00010000000000060045003E000A006D0058000E009E008E0006002E011B011300420100000600710151010600910151010A00DC01C10106000502FB01060016023E00060030023E000E005E028E000E0073028E000600AF023E000600C3023E000E00D9028E000600E4023E000600E9023E0006001F030D0306003D03FB0106004803FB0106005103FB01060058030D03060068030D03060075030D0306007C030D030600A4030D030600B9033E000600C1030D030600E103CC0300000000010000000000010001000100100020000000050001000100502000000000960077000A000100AC2100000000910081001D000800E421000000009100AA0025000C00EC22000000008618AF002C000E0000000100B50000000200BF0000000300C70000000400CF0000000500D80000000600E10000000700ED0000000100F60000000200FF00000003000601000004000E0100000100130100000200ED002100AF0030003100AF0036003900AF002C004100AF002C001100F10140001100AF00440049000A02490051001D024D0059003502520009003D02400051004602570049004D0257001900AF002C001900550244006100AF00440019006A025D0019008902630069009002440019009402630019009B0263001900A30244007100BB022C007900CD0240008900FB027B00890028038200990035038700A100AF008D0089008E039400B9009D03A3008900AF03A900E9009D03B10009003503BE000900AF002C00200023003B002E000B00D9002E001300E2002E001B00EB0068007700C300048000000000000000000000000000000000AF010000040000000000000000000000010035000000000004000000000000000000000001004C000000000004000000000000000000000001003E00000000000000003C4D6F64756C653E0053514C5F434C525F53617665456D61696C2E646C6C0055736572446566696E656446756E6374696F6E73006D73636F726C69620053797374656D004F626A6563740053797374656D2E446174610053797374656D2E446174612E53716C54797065730053716C537472696E670053617665456D61696C00497356616C69644D6F64656C0053797374656D2E4E65742E4D61696C004D61696C4D6573736167650053617665002E63746F720066726F6D456D61696C00746F456D61696C006363456D61696C00626363456D61696C006D61696C426F6479006D61696C5375626A6563740066696C654E616D650066726F6D4D61696C00746F4D61696C007375626A65637400626F6479004D6573736167650053797374656D2E446961676E6F73746963730044656275676761626C6541747472696275746500446562756767696E674D6F6465730053797374656D2E52756E74696D652E436F6D70696C6572536572766963657300436F6D70696C6174696F6E52656C61786174696F6E734174747269627574650052756E74696D65436F6D7061746962696C6974794174747269627574650053514C5F434C525F53617665456D61696C004D6963726F736F66742E53716C5365727665722E5365727665720053716C46756E6374696F6E417474726962757465006765745F56616C75650053797374656D2E494F00506174680047657454656D705061746800537472696E670049734E756C6C4F72576869746553706163650047756964004E65774775696400546F537472696E6700436F6E63617400436F6D62696E65007365745F426F6479004D61696C41646472657373007365745F46726F6D004D61696C41646472657373436F6C6C656374696F6E006765745F546F00416464006765745F4343006765745F426363007365745F5375626A6563740049446973706F7361626C6500446973706F736500457863657074696F6E006765745F4D65737361676500536D7470436C69656E7400547970650052756E74696D655479706548616E646C65004765745479706546726F6D48616E646C650053797374656D2E5265666C656374696F6E00417373656D626C79006765745F417373656D626C7900476574547970650046696C6553747265616D0046696C654D6F64650053747265616D00436F6E7374727563746F72496E666F0042696E64696E67466C6167730042696E64657200506172616D657465724D6F64696669657200476574436F6E7374727563746F7200496E766F6B65004D6574686F64496E666F004765744D6574686F6400426F6F6C65616E004D6574686F64426173650053797374656D2E476C6F62616C697A6174696F6E0043756C74757265496E666F00000000001D49006E00760061006C0069006400200049006E00700075007400730000092E0065006D006C000035530079007300740065006D002E004E00650074002E004D00610069006C002E004D00610069006C005700720069007400650072000009530065006E006400000B43006C006F0073006500000000002B957A7963C75A40A317F9BC7433E5170008B77A5C561934E08912000711091109110911091109110911091109070004020E0E0E0E06000201120D0E03200001052001011115042001010804010000000320000E042001010E0300000E040001020E040000112D0500020E0E0E05200101123104200012350E07080E0E0E120D123D110902112D0307010206000112451149042000124D05200112450E062002010E11550E2004125D116112651D12451D11690520011C1D1C072002126D0E11610C20051C1C116112651D1C1279042000124515070A124D12451251125D1C126D126D1D12451D1C020801000701000000000801000800000000001E01000100540216577261704E6F6E457863657074696F6E5468726F7773010000000000004F91D95A00000000020000001C010000D82B0000D80D000052534453E438C1F286C55E4E96475B0EB75EADEE01000000643A5C547261696E696E675C456D61696C5C53514C5F434C525F53617665456D61696C5C53514C5F434C525F53617665456D61696C5C6F626A5C44656275675C53514C5F434C525F53617665456D61696C2E706462000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001C2D000000000000000000003E2D0000002000000000000000000000000000000000000000000000302D00000000000000000000000000000000000000005F436F72446C6C4D61696E006D73636F7265652E646C6C0000000000FF250020001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001001000000018000080000000000000000000000000000001000100000030000080000000000000000000000000000001000000000048000000584000006C02000000000000000000006C0234000000560053005F00560045005200530049004F004E005F0049004E0046004F0000000000BD04EFFE00000100000000000000000000000000000000003F000000000000000400000002000000000000000000000000000000440000000100560061007200460069006C00650049006E0066006F00000000002400040000005400720061006E0073006C006100740069006F006E00000000000000B004CC010000010053007400720069006E006700460069006C00650049006E0066006F000000A801000001003000300030003000300034006200300000002C0002000100460069006C0065004400650073006300720069007000740069006F006E000000000020000000300008000100460069006C006500560065007200730069006F006E000000000030002E0030002E0030002E00300000004C001600010049006E007400650072006E0061006C004E0061006D0065000000530051004C005F0043004C0052005F00530061007600650045006D00610069006C002E0064006C006C0000002800020001004C006500670061006C0043006F0070007900720069006700680074000000200000005400160001004F0072006900670069006E0061006C00460069006C0065006E0061006D0065000000530051004C005F0043004C0052005F00530061007600650045006D00610069006C002E0064006C006C000000340008000100500072006F006400750063007400560065007200730069006F006E00000030002E0030002E0030002E003000000038000800010041007300730065006D0062006C0079002000560065007200730069006F006E00000030002E0030002E0030002E003000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000C000000503D00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
WITH PERMISSION_SET = UNSAFE

GO

ALTER ASSEMBLY [SQL_CLR_SaveEmail]
ADD FILE FROM 0x4D6963726F736F667420432F432B2B204D534620372E30300D0A1A445300000000020000020000001B000000800000000000000017000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF380000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0BCA3101380000000010000000100000000000000E00FFFF04000000FFFF03000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000BCA3101380000000010000000100000000000000F00FFFF04000000FFFF0300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000942E31014F91D95A01000000E438C1F286C55E4E96475B0EB75EADEE00000000000000000100000001000000000000000000000000000000DC51330100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000BCA310138000000001000000010000000000000FFFFFFFF04000000FFFF030000000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000BCA310138000000001000000010000000000000FFFFFFFF04000000FFFF030000000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000F862513FC607D311905300C04FA302A1C4454B99E9E6D211903F00C04FA302A10B9D865A1166D311BD2A0000F80849BD60A66E40CF64824CB6F042D48172A7991000000000000000380CDC3313A795B4BCBDA65E9233DEA8000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000460200000000000046020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FEEFFEEF010000008800000000643A5C547261696E696E675C456D61696C5C53514C5F434C525F53617665456D61696C5C53514C5F434C525F53617665456D61696C5C53617665456D61696C2E63730000643A5C747261696E696E675C656D61696C5C73716C5F636C725F73617665656D61696C5C73716C5F636C725F73617665656D61696C5C73617665656D61696C2E637300040000004400000001000000450000000000000003000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001BE2300180000000E46E410476D8D301010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000200000001000000020000000000000045000000280000001BE23001908A0044580000000100000044000000450000006500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000400000032002A110000000024020000000000003201000000000000000000000100000600000000010000000053617665456D61696C00001600031104000000F00100003201000000000000010000000A0024115553797374656D001A0024115553797374656D2E446174612E53716C54797065730000000E0024115553797374656D2E494F0000160024115553797374656D2E4E65742E4D61696C00000000160024115553797374656D2E5265666C656374696F6E00001E002011050000000100001100000000000004004353243124303030300000001E002011060000000100001100000000000004004353243424303030310000001E00201107000000010000110000000000000400435324302430303032000000220020110000000001000011000000000000000074656D7046696C65506174680000000022002011010000000100001100000000000000006D61696C46696C654E616D65000000001E00201102000000010000110000000000000000726573756C745061746800001600031138000000B80100008D00000080000000010000001E002011030000000100001100000000000000006D61696C4D65737361676500020006001600031138000000EC01000011000000120100000100000016002011040000000100001100000000000000006578000002000600020006002E000404C93FEAC6B359D649BC250902BBABB460000000004D0044003200000004010000040000000C000000010005000200060036002A1100000000CC020000000000002B000000000000000000000002000006320100000100000000497356616C69644D6F64656C0000001600031128020000980200002B00000032010000010000001E00201100000000020000110000000000000400435324312430303030000000020006002E000404C93FEAC6B359D649BC250902BBABB460000000004D00440032000000040100000401FD090C00000001000006020006002E002A1100000000D804000000000000E90000000000000000000000030000065D01000001000000005361766500000016000311D0020000A4040000E90000005D010000010000001E002011070000000300001100000000000004004353243024303030300000001E002011080000000300001100000000000004004353243024303030310000001E002011090000000300001100000000000004004353243424303030320000001E00201100000000030000110000000000000000617373656D626C790000000022002011010000000300001100000000000000005F6D61696C57726974657254797065001600031100030000A0040000CB0000007A010000010000001E002011020000000300001100000000000000005F66696C6553747265616D0016000311BC0300009C040000AE00000082010000010000002A002011030000000300001100000000000000005F6D61696C577269746572436F6E74727563746F720000001E002011040000000300001100000000000000005F6D61696C577269746572001E002011050000000300001100000000000000005F73656E644D6574686F640022002011060000000300001100000000000000005F636C6F73654D6574686F64000000000200060002000600020006002E000404C93FEAC6B359D649BC250902BBABB460000000004D0044003200000004010000040100000C0000000100000602000600F200000080010000000000000100010032010000000000001E000000740100000000000017000080010000001900008024000000EEEFFE80280000001A000080290000001B0000803A0000001F00008040000000220000806D000000250000807F00000028000080800000002A000080860000002B000080870000002C000080950000002D000080A80000002E000080BB0000002F000080CE00000030000080E100000031000080EF00000032000080F700000033000080F8000000EEEFFE800C010000EEEFFE800D010000340000800E010000EEEFFE8010010000350000801201000036000080130100003800008023010000EEEFFE80240100003C0000802E010000EEEFFE802F0100003D00008005000600090066000000000009000A000D003400090032000900760009004F0009000A0014003F000D000E0011003300110045001100330011003300110035001100390011002F000D000E00000000000000000009000A000000000009001D0009000A000D002E000000000009002A000000000005000600F20000003C00000032010000010001002B00000000000000030000003000000000000000480000800100000049000080290000004A000080050006000900A50005000600F2000000CC0000005D01000001000100E9000000000000000F000000C00000000000000052000080010000005300008011000000540000801D0000005600008025000000570000802600000059000080490000005C000080600000005F0000807800000062000080A900000065000080BE00000068000080D200000069000080D3000000EEEFFE80E7000000EEEFFE80E80000006A000080050006000900490009004F001000520009000A000D00AA000D005D000D007C000D0088000D0080000D007C0009000A00000000000000000005000600F4000000080000000100000000000000180000000000000018000000300000004C000000640000007800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFF1A092FF1300000001C0200004D0000000100000031000000010000007900000001000000190000000100000001000000010000006500000001000000010000000000000000000000000000000000000000000000000000000000004001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000C0000001800000024000000300000003C000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000160025110000000004000000010053617665456D61696C001600291100000000040000000100303630303030303100001A00251100000000280200000100497356616C69644D6F64656C00001600291100000000280200000100303630303030303200001200251100000000D002000001005361766500001600291100000000D0020000010030363030303030330000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000FFFFFFFF1A092FF10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFF77093101010000000B00008E0C00FC090D00000060000000580000002C00000050000000000000000000000016000000190000000000EEC00000000000000000FFFF000000000000FFFFFFFF00000000FFFF0000000000000000000000000A00DC04000000000000B002000001000000B0001201000000000000000055736572446566696E656446756E6374696F6E730037314141414545380000002DBA2EF10100000000000000320100000000000000000000000000000000000001000000320100002B00000000000000000000000000000000000000010000005D010000E900000000000000000000000000000000000000020002000D01000000000100FFFFFFFF00000000460200000802000000000000FFFFFFFF00000000FFFFFFFF010001000000010000000000643A5C547261696E696E675C456D61696C5C53514C5F434C525F53617665456D61696C5C53514C5F434C525F53617665456D61696C5C53617665456D61696C2E63730000FEEFFEEF010000000100000000010000000000000000000000FFFFFFFFFFFFFFFFFFFF0900FFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000942E31014F91D95A01000000E438C1F286C55E4E96475B0EB75EADEE700000002F4C696E6B496E666F002F6E616D6573002F7372632F686561646572626C6F636B002F7372632F66696C65732F643A5C747261696E696E675C656D61696C5C73716C5F636C725F73617665656D61696C5C73716C5F636C725F73617665656D61696C5C73617665656D61696C2E6373000400000006000000010000003A0000000000000011000000070000000A000000060000000000000005000000220000000800000000000000DC51330100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000E00000020000000CC00000038000000A30100003800000000000000AC000000800000005800000028000000A80700005C0200002C0000009000000003000000150000000600000014000000070000000A0000000B00000008000000090000000C0000000D0000000E0000000F000000100000001100000013000000120000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
AS N'SQL_CLR_SaveEmail.pdb'

GO