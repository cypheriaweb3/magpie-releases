cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.624"
  sha256 arm:   "f3507fdeb9d9e3baa9e7e6a74f88c3389f02efb5d583139de847dcdf1f87289c",
         intel: "29e312666358b9d3f28b48f422c05d1d635ffc6788675c49b7084ae080233884"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
