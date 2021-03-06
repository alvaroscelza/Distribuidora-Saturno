USE [master]
GO
/****** Object:  Database [DistribuidoraSaturno]    Script Date: 05/02/2016 12:01:43 PM ******/
CREATE DATABASE [DistribuidoraSaturno]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DistribuidoraSaturno', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.LOADERON\MSSQL\DATA\DistribuidoraSaturno.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DistribuidoraSaturno_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.LOADERON\MSSQL\DATA\DistribuidoraSaturno_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DistribuidoraSaturno] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DistribuidoraSaturno].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DistribuidoraSaturno] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DistribuidoraSaturno] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DistribuidoraSaturno] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DistribuidoraSaturno] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DistribuidoraSaturno] SET ARITHABORT OFF 
GO
ALTER DATABASE [DistribuidoraSaturno] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DistribuidoraSaturno] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [DistribuidoraSaturno] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DistribuidoraSaturno] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DistribuidoraSaturno] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DistribuidoraSaturno] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DistribuidoraSaturno] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DistribuidoraSaturno] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DistribuidoraSaturno] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DistribuidoraSaturno] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DistribuidoraSaturno] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DistribuidoraSaturno] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DistribuidoraSaturno] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DistribuidoraSaturno] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DistribuidoraSaturno] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DistribuidoraSaturno] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DistribuidoraSaturno] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [DistribuidoraSaturno] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DistribuidoraSaturno] SET RECOVERY FULL 
GO
ALTER DATABASE [DistribuidoraSaturno] SET  MULTI_USER 
GO
ALTER DATABASE [DistribuidoraSaturno] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DistribuidoraSaturno] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DistribuidoraSaturno] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DistribuidoraSaturno] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DistribuidoraSaturno', N'ON'
GO
USE [DistribuidoraSaturno]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 05/02/2016 12:01:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 05/02/2016 12:01:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 05/02/2016 12:01:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 05/02/2016 12:01:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 05/02/2016 12:01:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 05/02/2016 12:01:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Productos]    Script Date: 05/02/2016 12:01:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Codigo] [nvarchar](max) NOT NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Precio] [int] NOT NULL,
	[PorcentajeDeGananciaSobreElPrecioParaMi] [int] NOT NULL,
	[URLImagen] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Productos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201604272340590_InitialCreate', N'AccesoDatos.Context', 0x1F8B0800000000000400CD58C96E233710BD07C83F34784A008FE8E59218DD3370247B60C4B205B73D77AABB2433E1D221D986F46D73C827E51752BD2FDA5AF66410E822B1AB5E2D2C3EBED63F5FFFF63FADA4F05EC158AE5540CE46A7C40315E998AB654052B7F8F00BF9F4F1C71FFCEB58AEBC2F95DD4566879ECA06E4C5B9E492521BBD806476247964B4D50B378AB4A42CD6F4FCF4F4577A764601210862799EFF982AC725E43FF0E758AB0812973231D531085BAEE3933047F5EE99049BB0080272154560F584396D89772538C31442100BE231A5B4630E13BC7CB6103AA3D5324C708189A7750268B760C24299F865633EB486D3F3AC06DA385650516A9D9647029E5D944DA17DF737B596D44DC3B65D637BDD3AAB3A6F5D406646C769E434F1FAC12EC7C26486019968C915D7A3CAF6C42B574EEA8DC7F9C83E27DE38152E351028489D61E2C49BA573C1A3DF61FDA4FF0415A85488764698133EEB2CE012464AC0B8F5232CCA3C6F63E2D1AE1FED3BD66E2D9FA2825BE52ECE89778FC1D95C40BDE1AD6A43A70D7C060586398867CC39302AC380BC651BD17BB1EEB59C1BA8E2E18CE13921DE94ADEE402DDD4B40F02BF16EF80AE26AA5CCE159713C56E8E44C0A5B72DC1F778C2772A9BF7FDC09D8C8F024CAA7F2DDC1F7C79A19C03887F6F200863611EE24FB0326F09929A622CE428D5B762D0AF819336CCADF17E4F9F1EE56B2257CEB96F8B439B79BA71949D2318E835B8F8472B0725B4E34B25F79A86D19A65B4E811782EB9103126A9340C1AAA38638B6655AE7D430362D28BBA276BA83DBFD294B126C5A8BEBCB152F2C887EFC213C9E0865814123BB850FEB6CEB484806B88FBDA7F969831B6EACC36B86CD59B66DE3586E312B76604777AB28FD26F759B0E979E5917D2FBC5AB75DB3153D80A67537588DC4F1CF0B833A9116FD6FB8E6772C13CC6C21D5B116A954BB88799F7745936D846A6D384A457A6D946A6D384A87C2DA509D07C3F12A9A6A43556B47A00C25AA4E98A14EC3F36871593B526B7913CBA7BD79EB4F34DD18E9DE95DE3F23FBA8A56F5247AF29A647257E79AC0F6BC98D735E98100F9BF4CAE3EC8C876BEB408E328351F897180B8EF5360653A6F802AC2B540F415577DE53A5FF1F8548AD8DC54099F8DDA51BCFBA7A509C1D795177D59A7A65267A61E627C9563FBF5381BD0F6B8BAADA0978BC72CA5BF9DFEAA6B784D8504D47947CAC32EA5FDFC3F4CF5EF953504340E279D6E822D196707AA33ADAA42A9FB65F8E7D1C15BE6C20B257650551C6010D686573AB16BA6A3A56D7CEA832E9EDC9141C8BB14957C6F1058B1C3E46BD617331FB8589144DAEE51CE25BF590BA247557D6829C8BCE6B924FF7C7CF25603767FF21C97ED96F5102A6C9B1047850BFA55CC475DE379B33B90B229B979275302B14F308B75CD748F75A0D042ADB37810454C6594F20138160F64185EC15DE921B6AF93B58B2685DDD38BB410E6F44B7EDFE84B3A561D296188D7FF6870FCDFEF1F9F82FF9AF943523120000, N'6.1.3-40302')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201604272357329_InitialCreate', N'Distribuidora_Saturno.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C5B6FE3B6127E2F70FE83A0A7738AD4CAE5EC621BD82D5227E909BAB9609D2DCE5B404BB443AC44A912954D50F497F5E1FCA4F3173A942859E245175BB19D628145440EBF190E87E47038F4FFFFFCDFF8C7E7C0B79E709C90904EECA3D1A16D61EA861EA1CB899DB2C5771FEC1F7FF8C737E30B2F78B67E2DE84E381DB4A4C9C47E642C3A759CC47DC4014A460171E33009176CE4868183BCD0393E3CFCDE393A723040D8806559E34F296524C0D9077C4E43EAE288A5C8BF0E3DEC27A21C6A6619AA7583029C44C8C513FB9C242C26F39478618C1E6688A5310D47793BDB3AF309029966D85FD816A234648881C4A79F133C63714897B3080A907FFF1261A05B203FC1A227A72BF2AE9D3A3CE69D72560D0B28374D5818F4043C3A115A72E4E66BE9DA2EB5087ABC007DB317DEEB4C9713FBCAC359D1A7D00705C80C4FA77ECC8927F675C9E22C896E301B150D4739E4650C705FC3F8CBA88A7860756E77505AD5F1E890FF3BB0A6A90FA38A2714A72C46FE817597CE7DE2FE825FEEC32F984E4E8EE68B930FEFDE23EFE4FDBFF1C9BB6A4FA1AF40572B80A2BB388C700CB2E145D97FDB72EAED1CB961D9ACD226D70AD8124C10DBBA46CF1F315DB247983AC71F6CEB923C63AF2811C6F59912984FD088C5297CDEA4BE8FE63E2EEB9D469EFCFF06AEC7EFDE0FC2F5063D916536F4127F983831CCAB4FD8CF6A934712E5D3AB36DE0F82EC320E03FE5DB7AFBCF66116A6B1CB3B131A49EE51BCC4AC2EDDD859196F2793E650C39B7581BAFFA6CD2555CD5B4BCA3BB4CE4C28586C7B3614F2BE2EDFCE1677164530789969718D34195CD3B63592700EAC1AB525A857E674D4D59C2874F3EFBC3A5E0488F8032C8F1DB8808FB2207180CB5EFE14823122DA5BE63B9424B03A78FF41C96383E8F0E700A2CFB09BC660B4338682E8D5B9DD3D8614DFA4C19CCF85EDF11A6C68EEBF8697C865617C4179AB8DF13E86EE97306517D43B470C7F666E01C83FEF49D01D601071CE5C1727C9251833F6A621B8E005E0156527C7BDE1F852B56BF764EA2312E8FD1369517D2848573E8A9E42F1530C643A5FA549D48FE192D06EA216A46651738A565105595F513958374905A559D08CA055CE9C6A30EF2F1BA1E1DDBF0C76FFFDBFCD366FD35A5051E30C5648FC33A6388665CCBB438CE198AE46A0CBBAB10B67211B3ECEF4D5F7A68CD3AFC84F8766B5D66CC81681E1674306BBFFB32113138A9F88C7BD920E87A28218E03BD1EBCF5BED734E926CDBD3A1D6CD6D33DFCE1A609A2E674912BA249B059A70980866D4E5071FCE6A8F6CE4BD91A323D0313074C2B73C2881BED9B251DDD273EC6386AD33370F174E51E2224F552374C8EB2158B1A36A045B4549EAC27DABF0044BC7316F84F821080EA68850A64E0B425D1221BF554B52CB8E5B18EF7BC943AE39C711A69C61AB26BA30D70745B800251F6950DA3434762A16D76C8806AFD534E66D2EEC6ADC9558C5566CB2C57736D8A5F0DF5EC5309B35B605E36C564917018C01BE5D18A838AB743500F9E0B26F062A9D980C062A5CAAAD18685D633B30D0BA4ADE9C81E647D4AEE32F9D57F7CD3CEB07E5ED6FEB8DEADA816DD6F4B167A699FB9ED086410B1CABE6793EE795F899690E6720A7389F25C2D5954D8483CF30AB876C56FEAED60F759A4164236A025C195A0BA8B81A54809409D543B82296D7289DF0227AC01671B74658B1F64BB0151B50B1AB57A41542F345AA6C9C9D4E1F65CF4A6B508CBCD361A182A3310879F1AA77BC83524C715955315D7CE13EDE70A56362301A14D4E2B91A94547466702D15A6D9AE259D43D6C725DB484B92FB64D052D199C1B5246CB45D491AA7A0875BB0918AEA5BF84093AD887494BB4D593776F21C2A5130760CC956E36B1445842E2BC957A2C49AE59957D3EF66FD1391821CC371134D3E52296DC98985315A62A9165883A497244ED83962688E789C67EA050A99766F352CFF05CBEAF6A90E62B10F14D4FCEFBC45E3857E6DD755DD128176097D0DB86F9305D43596A06F6EF1B438E4A35813C39F867E1A50B3AB656E9DDFE455DBE7252AC2D891E4575C29456F8AC35B1F844E43A44E8FC187ABF469D61F32338449F185475A55BDC94B35A31441AB2A8A2990B5B3213439376B0E9BEC41F61FB55684D7996B226DA50A208A7A6254321F14B04A5D77D47A724A15B35ED31D51CA40A9424A553DA4ACE699D484AC56AC8567D0A89EA23B0735B3A48AAED67647D6E49854A135D56B606B6496EBBAA36AD250AAC09AEAEED8AB9C147939DDE3DDCC78AE19603BCB0FC19BED67068CD7591B87D90E2B77FD55A04A714F2C719BAF8089F2BDB42BE3497000BBCAA3209BD99501C3BC1AD5EECBEB8B51E325BF19B376095E5BF09B9200CC78FDACF7556D443912CA2425F7F268281D01C7E238D6FE2847399FE524B655A81136FB9784E160C40946B3DFFCA94F305FDA0B826B44C902272C4FFCB08F0F8F8EA5D73CFBF3B2C64912CFD71C674DCF6BEA63B6851C2EFA8462F711C56A46C506AF4F56A04AB0FA8A7AF87962FF9EB53ACDE21EFCAFACF8C0BA4A3E53F25B0A15F7718AAD3FD40CD161B2F19B8F607BFA76A2BB56AFFEFB90373DB06E639831A7D6A1A4CB7546B8FEA2A2973479D30DA459FB9DC5DB9D50B5070B5A546942ACFF3E614ED8206F130A29FF19A0E77FF5154DFBFE602344CD1B83A1F00651A1E90DC13A58C6F7031E7CB2ECFD40BFCEEADF13AC239AF12D01A1FDC1E49704DD97A1A2E50EB71ACDE9681B4B52A6E7D64CEC8DD23277BD372909DB1B4D743529BB07DC0689D76B58C61BCB591E6C77D4A4240F86BD4BD37EF53CE47D493D5E2585EC36E3789B49C60D97467FABDCE23DC886D364F7EC3E8378DBB6668AE8EE791A66BF3CE13D333691F3B5FB6CE06D1B9B29CCBBE7C6D62BE777CF6C6D57FBE78E2DADF316BAF30C5E3519C97033A38B05B765E8E6817338E1CF433082DCA3CC1F56EA53C29AD2595B18AE48CC4CCDB968326365E2287C158A66B6FDFA2A36FCC6CE0A9A66B6860CCE26DE62FD6FE42D689A791BF22277915BACCD4CD4E57BB7AC634D29526F2997B8D69396D4F5369FB5F19AFD2DA50E0FA294DAEC31DC11BF9D4CE1415432E4D4E99119AC5EF7C2DE59F9A546D8BF13B25C41F0DF6DA4D8ADED9A25CD155D84C5E62D49549048119A6BCC90075BEA59CCC802B90CAA798C397B199EC5EDF84DC71C7B57F4366551CAA0CB3898FBB5801777029AF867E9CF7599C7B751F62327437401C4243C367F4B7F4A89EF95725F6A62420608EE5D88882E1F4BC623BBCB9712E926A41D8184FA4AA7E81E07910F60C92D9DA127BC8E6C607E1FF112B92FAB08A009A47D20EA6A1F9F13B48C5190088C557BF8041BF682E71FFE024D82759CB0540000, N'6.1.3-40302')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'1', N'Administrador')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c7c55c59-0ed3-415c-a57e-1985ae05ac31', N'1')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'c7c55c59-0ed3-415c-a57e-1985ae05ac31', N'alvaroscelza@gmail.com', 0, N'AMDrNwWNH1Uefxv5UjmhgHCmXypsnwO2yuB4bnDRjQuETJ54Qaj6oa7z3tI0YyO28w==', N'7348e54e-0f79-4241-a014-884dd3d3707a', NULL, 0, 0, NULL, 1, 0, N'alvaroscelza@gmail.com')
SET IDENTITY_INSERT [dbo].[Productos] ON 

INSERT [dbo].[Productos] ([Id], [Nombre], [Codigo], [Descripcion], [Precio], [PorcentajeDeGananciaSobreElPrecioParaMi], [URLImagen]) VALUES (1, N'Producto 1', N'codigo1', N'Descripción Producto 1', 1, 5, N'/Content/Images/codigo1.jpeg')
INSERT [dbo].[Productos] ([Id], [Nombre], [Codigo], [Descripcion], [Precio], [PorcentajeDeGananciaSobreElPrecioParaMi], [URLImagen]) VALUES (2, N'Producto 2', N'codigo2', N'Descripción Producto 2', 2, 5, N'/Content/Images/codigo2.jpeg')
INSERT [dbo].[Productos] ([Id], [Nombre], [Codigo], [Descripcion], [Precio], [PorcentajeDeGananciaSobreElPrecioParaMi], [URLImagen]) VALUES (3, N'Producto 3', N'codigo3', N'Descripción Producto 3', 3, 5, N'/Content/Images/codigo3.jpeg')
INSERT [dbo].[Productos] ([Id], [Nombre], [Codigo], [Descripcion], [Precio], [PorcentajeDeGananciaSobreElPrecioParaMi], [URLImagen]) VALUES (4, N'Producto 4', N'codigo4', N'Descripción Producto 4', 4, 5, N'/Content/Images/codigo4.jpeg')
INSERT [dbo].[Productos] ([Id], [Nombre], [Codigo], [Descripcion], [Precio], [PorcentajeDeGananciaSobreElPrecioParaMi], [URLImagen]) VALUES (5, N'Producto 5', N'codigo5', N'Descripción Producto 5', 5, 5, N'/Content/Images/codigo5.jpeg')
INSERT [dbo].[Productos] ([Id], [Nombre], [Codigo], [Descripcion], [Precio], [PorcentajeDeGananciaSobreElPrecioParaMi], [URLImagen]) VALUES (6, N'Producto 6', N'codigo6', N'Descripción Producto 6', 6, 6, N'/Content/Images/codigo6.png')
INSERT [dbo].[Productos] ([Id], [Nombre], [Codigo], [Descripcion], [Precio], [PorcentajeDeGananciaSobreElPrecioParaMi], [URLImagen]) VALUES (7, N'Producto 7', N'codigo7', N'Descripción Producto 7', 7, 7, N'/Content/Images/codigo7.jpeg')
INSERT [dbo].[Productos] ([Id], [Nombre], [Codigo], [Descripcion], [Precio], [PorcentajeDeGananciaSobreElPrecioParaMi], [URLImagen]) VALUES (8, N'Producto 8', N'codigo8', N'Descripción Producto 8', 8, 8, N'/Content/Images/codigo8.jpeg')
INSERT [dbo].[Productos] ([Id], [Nombre], [Codigo], [Descripcion], [Precio], [PorcentajeDeGananciaSobreElPrecioParaMi], [URLImagen]) VALUES (9, N'Producto 9', N'codigo9', N'Descripción Producto 9', 9, 9, N'/Content/Images/codigo9.jpeg')
INSERT [dbo].[Productos] ([Id], [Nombre], [Codigo], [Descripcion], [Precio], [PorcentajeDeGananciaSobreElPrecioParaMi], [URLImagen]) VALUES (10, N'Producto 10', N'codigo10', N'Descripción Producto 10', 10, 10, N'/Content/Images/codigo10.jpeg')
SET IDENTITY_INSERT [dbo].[Productos] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 05/02/2016 12:01:44 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 05/02/2016 12:01:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 05/02/2016 12:01:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 05/02/2016 12:01:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 05/02/2016 12:01:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 05/02/2016 12:01:44 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [DistribuidoraSaturno] SET  READ_WRITE 
GO
