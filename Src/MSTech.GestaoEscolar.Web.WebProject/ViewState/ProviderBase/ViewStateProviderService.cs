using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;
using System.Configuration.Provider;
using System.Web.Configuration;

namespace MSTech.GestaoEscolar.Web.WebProject.ViewState
{
    //ViewStateProviderService disponibiliza os viewstate providers para o cliente. 
    //Isso inclui o carregamento dos providers declarados no arquivo web.config.

    // Enterprise Design Patterns: Lazy Load.
    public static class ViewStateProviderService
    {
        private static ViewStateProviderBase provider = null;
        private static ViewStateProviderCollection providers = null;
        private static object locker = new object();
        private static string useProvider = null;

        // retorna informa��o do viewstate do apropriado viewstate provider. 
        // Implementa o Lazy Load Design Pattern.
        public static object LoadPageState(string name)
        {
            // Delegar ao provider
            return Provider.LoadPageState(name);
        }


        public static bool UseProvider
        {
            get
            {
                if (String.IsNullOrEmpty(useProvider))
                {
                    var section = (ViewStateProviderServiceSection)WebConfigurationManager.GetSection("myviewstateSection/viewstateService");
                    //if (section != null)
                        useProvider = section.UseProvider;
                }
                return !String.IsNullOrEmpty(useProvider) ? 
                        useProvider.ToLower().Equals("none") ? false : true 
                        : true;
            }
        }


        private static ViewStateProviderBase Provider
        {
            get
            {
                if (provider == null)
                {
                    // Assegura que o provider � lido
                    LoadProviders();
                }
                return provider;
            }
        }

        
        // Salva qualquer informa��o do view ou control state para o apropriado viewstate provider. 
        public static void SavePageState(string name, object viewState)
        {
            // Delegar ao provider
            Provider.SavePageState(name, viewState);
        }


        // Instancia e gerencia o viewstate providers referente aos providers registrados na se��o "viewStateServices" do web.config.
        private static void LoadProviders()
        {
            // providers s�o carregados apenas uma vez
            if (provider == null)
            {
                // Sincronize o processo de carregar os providers
                lock (locker)
                {
                    // Verifica se o _provider ainda � nulo
                    if (provider == null)
                    {
                        // Pega uma refer�ncia para a se��o <viewstateService>
                        var section = (ViewStateProviderServiceSection)WebConfigurationManager.GetSection("myviewstateSection/viewstateService");

                        // L� todos os providers registrados
                        providers = new ViewStateProviderCollection();

                        ProvidersHelper.InstantiateProviders(section.Providers, providers, typeof(ViewStateProviderBase));

                        // configura _provider para o provider padr�o
                        provider = providers[section.DefaultProvider];
                    }
                }
            }
        }
    }
}
