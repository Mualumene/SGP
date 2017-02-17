using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Text;

namespace MSTech.GestaoEscolar.Web.WebProject.ViewState
{
    // GlobalViewStateSingleton mant�m uma lista de viewstates em uma hashtable globalmente acess�vel. 
    // Este � uma classe de helper Singleton para a classe ViewStateProviderGlobal.
    
    // Gof Design Pattern: Singleton.
    public class GlobalViewStateSingleton
    {
        #region The Singleton definition

        // esta � a �nica instance desta classe
        private static readonly GlobalViewStateSingleton _instance = new GlobalViewStateSingleton();

        // private constructor for GlobalViewStateSingleton.
        // previne outros de criar inst�ncias adicionais.
        
        private GlobalViewStateSingleton()
        {
            ViewStates = new Dictionary<string, object>();
        }

        
        // retorna a �nica inst�ncia da classe GlobalViewStateSingleton
        public static GlobalViewStateSingleton Instance
        {
            get { return _instance; }
        }

        #endregion

        
        // retorna uma lista de ViewStates.
        public Dictionary<string, object> ViewStates { get; private set; }
    }
}
