﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.34014
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Chat.Data {
    
    
    [global::System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.VisualStudio.Editors.SettingsDesigner.SettingsSingleFileGenerator", "12.0.0.0")]
    internal sealed partial class ChatSettings : global::System.Configuration.ApplicationSettingsBase {
        
        private static ChatSettings defaultInstance = ((ChatSettings)(global::System.Configuration.ApplicationSettingsBase.Synchronized(new ChatSettings())));
        
        public static ChatSettings Default {
            get {
                return defaultInstance;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("mongodb://TelerikAcademy:123456@ds045077.mongolab.com:45077/chatdb")]
        public string ChatConnectionString {
            get {
                return ((string)(this["ChatConnectionString"]));
            }
            set {
                this["ChatConnectionString"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("chatdb")]
        public string DatabaseName {
            get {
                return ((string)(this["DatabaseName"]));
            }
            set {
                this["DatabaseName"] = value;
            }
        }
    }
}