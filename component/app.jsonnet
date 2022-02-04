local kap = import 'lib/kapitan.libjsonnet';
local inv = kap.inventory();
local params = inv.parameters.cloud_portal;
local argocd = import 'lib/argocd.libjsonnet';

local app = argocd.App('cloud-portal', params.namespace);

{
  'cloud-portal': app,
}
