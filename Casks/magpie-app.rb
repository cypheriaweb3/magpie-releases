cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.872"
  sha256 arm:   "614bc7a10dbd9fd2e1c8a3033bf8065e9251ff01d7da145039ad0993b43639ca",
         intel: "394a3e940aeef24a9e09ebeddda7ca4ead98e3a963f161d8071c252599a8f904"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
