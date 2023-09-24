Pod::Spec.new do |s|
  s.name                = "OxySDK"
  s.version             = "1.0.15.22"
  s.summary             = "Send data over sound"
  s.homepage            = "https://oxycom.co.uk"
  s.license             = {
      :type => 'Commercial',
      :text => <<-LICENSE
                    Copyright (C) 2020 OxySound
                    Permission is hereby granted to use this framework as is, modifications are not allowed.
                    All rights reserved.
      				THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
      				IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
      				FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
      				AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
      				LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
      				OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
      				THE SOFTWARE.
            LICENSE
  }
  s.author              = { "Oxy" => "support@oxycom.co.uk" }
  s.platform            = :ios, '11.0'

  s.source              = { :git => 'https://github.com/OxySound/OxySDK.git', :tag => s.version.to_s }

  s.source_files        = 'Oxy.framework/**/*.{h}'
  s.module_map 			= 'Oxy.framework/Modules/module.modulemap'
  s.preserve_paths      = 'Oxy.framework'
  s.vendored_frameworks = 'Oxy.framework'

  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }

  s.frameworks          = 'CoreTelephony', 'Oxy'
  s.requires_arc        = true
end
