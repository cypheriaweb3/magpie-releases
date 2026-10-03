cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.716"
  sha256 arm:   "c90222f0d03864ac305d57d3558d00e6f4123b335ee75a396346da4fbb0f50c1",
         intel: "0e280174855e8fece51f857d5291a80c45918506796d6e30cf68d0b724aa5a04"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
