DECLARE @ExecOp AS INT = 1;

SELECT [ID],[Order],[Name],[Age],[Photo],[Nationality],[Flag],[Overall],[Potential],[Club],[Club_Logo]
      ,[dbo].[ConvertStringToMoney]([Value]) AS [Value€]
	  ,[dbo].[ConvertStringToMoney]([Wage]) AS [Wage€]
      ,[Special],[Preferred_Foot],[International_Reputation],[Weak_Foot],[Skill_Moves],[Work_Rate]
      ,[Body_Type],[Real_Face],[Position],[Jersey_Number],[Joined]
      ,ISNULL([Loaned_From], '') AS [Loaned_From]
      ,[Contract_Valid_Until]
      ,[dbo].[ConvertHeightFromFeetsToMts](REPLACE([Height], 'lbs', '')) AS [HeightMts]
      ,CAST(REPLACE([Weight], 'lbs', '') AS int) AS [WeightLbs]
      ,[dbo].[ConvertSkill]([LS], @ExecOp) AS [LS]
      ,[dbo].[ConvertSkill]([ST], @ExecOp) AS [ST]
      ,[dbo].[ConvertSkill]([RS], @ExecOp) AS [RS]
      ,[dbo].[ConvertSkill]([LW], @ExecOp) AS [LW]
      ,[dbo].[ConvertSkill]([LF], @ExecOp) AS [LF]
      ,[dbo].[ConvertSkill]([CF], @ExecOp) AS [CF]
	  ,[dbo].[ConvertSkill]([RF], @ExecOp) AS [RF]
      ,[dbo].[ConvertSkill]([RW], @ExecOp) AS [RW]
      ,[dbo].[ConvertSkill]([LAM], @ExecOp) AS [LAM]
      ,[dbo].[ConvertSkill]([CAM], @ExecOp) AS [CAM]
      ,[dbo].[ConvertSkill]([RAM], @ExecOp) AS [RAM]
      ,[dbo].[ConvertSkill]([LM], @ExecOp) AS [LM]
      ,[dbo].[ConvertSkill]([LCM], @ExecOp) AS [LCM]
      ,[dbo].[ConvertSkill]([CM], @ExecOp) AS [CM]
      ,[dbo].[ConvertSkill]([RCM], @ExecOp) AS [RCM]
      ,[dbo].[ConvertSkill]([RM], @ExecOp) AS [RM]
      ,[dbo].[ConvertSkill]([LWB], @ExecOp) AS [LWB]
      ,[dbo].[ConvertSkill]([LDM], @ExecOp) AS [LDM]
      ,[dbo].[ConvertSkill]([CDM], @ExecOp) AS [CDM]
      ,[dbo].[ConvertSkill]([RDM], @ExecOp) AS [RDM]
      ,[dbo].[ConvertSkill]([RWB], @ExecOp) AS [RWB]
      ,[dbo].[ConvertSkill]([LB], @ExecOp) AS [LB]
      ,[dbo].[ConvertSkill]([LCB], @ExecOp) AS [LCB]
      ,[dbo].[ConvertSkill]([CB], @ExecOp) AS [CB]
      ,[dbo].[ConvertSkill]([RCB], @ExecOp) AS [RCB]
      ,[dbo].[ConvertSkill]([RB], @ExecOp) AS [RB]
      ,[Crossing]
      ,[Finishing]
      ,[HeadingAccuracy]
      ,[ShortPassing]
      ,[Volleys]
      ,[Dribbling]
      ,[Curve]
      ,[FKAccuracy]
      ,[LongPassing]
      ,[BallControl]
      ,[Acceleration]
      ,[SprintSpeed]
      ,[Agility]
      ,[Reactions]
      ,[Balance]
      ,[ShotPower]
      ,[Jumping]
      ,[Stamina]
      ,[Strength]
      ,[LongShots]
      ,[Aggression]
      ,[Interceptions]
      ,[Positioning]
      ,[Vision]
      ,[Penalties]
      ,[Composure]
      ,[Marking]
      ,[StandingTackle]
      ,[SlidingTackle]
      ,[GKDiving]
      ,[GKHandling]
      ,[GKKicking]
      ,[GKPositioning]
      ,[GKReflexes]
      ,[dbo].[ConvertStringToMoney]([Release_Clause]) AS [Release_Clause€]
  FROM [LOCAL_DEV].[dbo].[FIFA_19_Data]
 ORDER BY [Order]