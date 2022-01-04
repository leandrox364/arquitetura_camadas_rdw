object DmRDW: TDmRDW
  OldCreateOrder = False
  OnCreate = ServerMethodDataModuleCreate
  OnDestroy = ServerMethodDataModuleDestroy
  Encoding = esUtf8
  QueuedRequest = False
  Height = 150
  Width = 215
  object DWServerEvents1: TDWServerEvents
    IgnoreInvalidParams = False
    Events = <
      item
        Routes = [crAll]
        NeedAuthorization = True
        DWParams = <>
        JsonMode = jmPureJSON
        Name = 'cliente'
        EventName = 'cliente'
        OnlyPreDefinedParams = False
        OnReplyEventByType = DWServerEvents1EventsclienteReplyEventByType
      end>
    Left = 80
    Top = 40
  end
end
