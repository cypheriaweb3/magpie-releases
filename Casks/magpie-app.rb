cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.407"
  sha256 arm:   "bc9c53becfc6f5bb997b7887c4d733429e04166b8b8863fe18a4afac9a9af97c",
         intel: "ad79f5abec172fdefce02bc8017ebed660fa8f441c439cf7d10f82294831fb98"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
