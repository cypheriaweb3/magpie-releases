cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.462"
  sha256 arm:   "7a982f032f958bb9afc5309ba06b96e1696501738e6ff5a398465b50208699e2",
         intel: "e36ef26e4a54c97aaa7cd300babc48d4b5a76636d860e688dd57c6d4d13d7499"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
