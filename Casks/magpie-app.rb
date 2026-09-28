cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.261"
  sha256 arm:   "3cf694dff8215719993e49288428acae59556cd8bf5b5a17f801099dd71149cd",
         intel: "dbaff2b86478d33a6b317eeaa58525d9469aa5ddb4a0f670a1ba28984a9460d8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
