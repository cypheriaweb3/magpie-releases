cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.453"
  sha256 arm:   "18bda951ec9214e7fcf3b15c09c1132c441f2bdb96de6c896c36f7ab5733bbf3",
         intel: "ec929f623d4afe0fecbcaf6cb0da6700450ec599c93256b74a0ff86a5d25d34c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
