/*******************************************************************************
 * Copyright 2013 One Platform Foundation
 *
 *       Licensed under the Apache License, Version 2.0 (the "License");
 *       you may not use this file except in compliance with the License.
 *       You may obtain a copy of the License at
 *
 *           http://www.apache.org/licenses/LICENSE-2.0
 *
 *       Unless required by applicable law or agreed to in writing, software
 *       distributed under the License is distributed on an "AS IS" BASIS,
 *       WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *       See the License for the specific language governing permissions and
 *       limitations under the License.
 ******************************************************************************/

package org.onepf.oms;

/**
 * User: Boris Minaev
 * Date: 29.04.13
 * Time: 17:28
 */

import android.content.Intent;

interface IOpenAppstore {
    boolean isAppAvailable(String packageName);

    boolean isInstaller(String packageName);

    boolean isServiceSupported(String packageName, int serviceType);

    // 0 - billing service
    Intent getServiceIntent(String packageName, int serviceType);

    String getAppstoreName();

    Intent getProductPageIntent(String packageName);

    Intent getRateItPageIntent(String packageName);

    Intent getSameDeveloperPageIntent(String packageName);
    
    boolean areOutsideLinksAllowed();
}