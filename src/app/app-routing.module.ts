import { NgModule } from '@angular/core';
import { Routes, RouterModule, PreloadAllModules } from '@angular/router';
import { HttpClientModule } from '@angular/common/http';

const routes: Routes = [
  { path: 'client1', loadChildren: () => import('./pages/client/client.module').then(m => m.ClientModule) },
  { path: 'invoice1', loadChildren: () => import('./pages/invoice/invoice.module').then(m => m.InvoiceModule) },
];

@NgModule({
  imports: [RouterModule.forRoot(routes,{enableTracing: true,
    preloadingStrategy: PreloadAllModules}),
    HttpClientModule],
  exports: [RouterModule]
})
export class AppRoutingModule { }
