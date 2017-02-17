using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;
using System.Configuration.Provider;
using System.Web.Configuration;

namespace MSTech.GestaoEscolar.Web.WebProject.ViewState
{
    // Define os m�todos que o viewstate providers devem implementar.
    
    // Design Pattern: Microsoft's Provider Design Pattern.
    // GoF Design Patterns: Strategy, Factory, Singleton.
    // 
    // Strategy Pattern porque o cliente tem a op��o de escolher a estrat�gia de provedor viewstate que ir� utilizar.
    // Singleton Pattern porque GlobalViewStateSingleton � um Singleton que mant�m uma lista de todos os viewstate providers dispon�veis.
    // Factory Pattern porque os viewstate providers s�o criados(instanciados) de acordo com as configura��es do web.config.

    public abstract class ViewStateProviderBase : ProviderBase
    {
        // salva qualquer informa��o da view ou control state para a p�gina.
        public abstract void SavePageState(string name, object viewState);

        
        // retorna/l� qualquer informa��o da view ou control state da p�gina.
        public abstract object LoadPageState(string name);
    }
}
