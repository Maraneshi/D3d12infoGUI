CREATE TABLE IF NOT EXISTS Submissions(
    "ID" INTEGER PRIMARY KEY, -- This automatically becomes an alias for rowid in sqlite
    -- Start of required information used to determine whether report already exists
    "Header.Program" TEXT NOT NULL,
    "Header.Version" TEXT NOT NULL,
    "Header.Build Date" TEXT NOT NULL,
    "Header.Configuration" TEXT NOT NULL,
    "Header.Configuration bits" TEXT NOT NULL,
    "Header.Using preview Agility SDK" INT NOT NULL,
    "Header.D3D12_SDK_VERSION" INT NOT NULL,
    "Header.Intel GPU Detect compiled version" TEXT NOT NULL,
    "SystemInfo.OS Info.Windows version" TEXT NOT NULL,
    "SystemInfo.D3D12EnableExperimentalFeatures" TEXT NOT NULL,
    "DXGI_ADAPTER_DESC3.Description" TEXT NOT NULL,
    "DXGI_ADAPTER_DESC3.VendorId" INT NOT NULL,
    "DXGI_ADAPTER_DESC3.DeviceId" INT NOT NULL,
    "DXGI_ADAPTER_DESC3.SubSysId" INT NOT NULL,
    "DXGI_ADAPTER_DESC3.Revision" INT NOT NULL,
    "DXGI_ADAPTER_DESC3.DedicatedVideoMemory" INT NOT NULL,
    "CheckInterfaceSupport.UMDVersion" INT NOT NULL,
    -- Information that doesn't affect report existance check
    -- But that is still required in each report
    "SystemInfo.DXGI_FEATURE.DXGI_FEATURE_PRESENT_ALLOW_TEARING" INT NOT NULL,
    "DXGI_ADAPTER_DESC3.DedicatedSystemMemory" INT NOT NULL,
    "DXGI_ADAPTER_DESC3.SharedSystemMemory" INT NOT NULL,
    "DXGI_ADAPTER_DESC3.GraphicsPreemptionGranularity" INT NOT NULL,
    "DXGI_ADAPTER_DESC3.ComputePreemptionGranularity" INT NOT NULL,
    "DXGI_ADAPTER_DESC3.Flags" INT NOT NULL,
    "DXGI_QUERY_VIDEO_MEMORY_INFO[DXGI_MEMORY_SEGMENT_GROUP_LOCAL].Budget" INT NOT NULL,
    "DXGI_QUERY_VIDEO_MEMORY_INFO[DXGI_MEMORY_SEGMENT_GROUP_LOCAL].AvailableForReservation" INT NOT NULL,
    "DXGI_QUERY_VIDEO_MEMORY_INFO[DXGI_MEMORY_SEGMENT_GROUP_NON_LOCAL].Budget" INT NOT NULL,
    "DXGI_QUERY_VIDEO_MEMORY_INFO[DXGI_MEMORY_SEGMENT_GROUP_NON_LOCAL].AvailableForReservation" INT NOT NULL,
    "GetDescriptorHandleIncrementSize.D3D12_DESCRIPTOR_HEAP_TYPE_CBV_SRV_UAV" INT NOT NULL,
    "GetDescriptorHandleIncrementSize.D3D12_DESCRIPTOR_HEAP_TYPE_SAMPLER" INT NOT NULL,
    "GetDescriptorHandleIncrementSize.D3D12_DESCRIPTOR_HEAP_TYPE_RTV" INT NOT NULL,
    "GetDescriptorHandleIncrementSize.D3D12_DESCRIPTOR_HEAP_TYPE_DSV" INT NOT NULL,
    -- Starting from here all info is optional
    "VkPhysicalDeviceProperties.apiVersion" TEXT,
    "VkPhysicalDeviceProperties.driverVersion" INT,
    "VkPhysicalDeviceProperties.vendorID" INT,
    "VkPhysicalDeviceProperties.deviceID" INT,
    "VkPhysicalDeviceProperties.deviceType" INT,
    "VkPhysicalDeviceProperties.deviceName" TEXT,
    "VkPhysicalDeviceVulkan12Properties.driverID" INT,
    "VkPhysicalDeviceVulkan12Properties.driverName" TEXT,
    "VkPhysicalDeviceVulkan12Properties.driverInfo" TEXT,
    "Intel GPUDetect::GPUData.VendorId" INT,
    "Intel GPUDetect::GPUData.deviceID" INT,
    "Intel GPUDetect::GPUData.isUMAArchitecture" INT,
    "Intel GPUDetect::GPUData.videoMemory" INT,
    "Intel GPUDetect::GPUData.description" TEXT,
    "Intel GPUDetect::GPUData.extensionVersion" INT,
    "Intel GPUDetect::GPUData.intelExtensionAvailability" INT,
    "Intel GPUDetect::GPUData.dxDriverVersion" TEXT,
    "Intel GPUDetect::GPUData.driverInfo.driverReleaseRevision" INT,
    "Intel GPUDetect::GPUData.driverInfo.driverBuildNumber" INT,
    "Intel GPUDetect::GPUData.DefaultFidelityPreset" INT,
    "Intel GPUDetect::GPUData.GPUArchitecture" TEXT,
    "Intel GPUDetect::GPUData.GraphicsGeneration" TEXT,
    "Intel GPUDetect::GPUData.euCount" INT,
    "Intel GPUDetect::GPUData.packageTDP" INT,
    "Intel GPUDetect::GPUData.maxFillRate" INT,
    "Intel GPUDetect::GPUData.maxFrequency" INT,
    "Intel GPUDetect::GPUData.minFrequency" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS.DoublePrecisionFloatShaderOps" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS.OutputMergerLogicOp" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS.MinPrecisionSupport" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS.TiledResourcesTier" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS.ResourceBindingTier" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS.PSSpecifiedStencilRefSupported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS.TypedUAVLoadAdditionalFormats" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS.ROVsSupported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS.ConservativeRasterizationTier" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS.MaxGPUVirtualAddressBitsPerResource" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS.StandardSwizzle64KBSupported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS.CrossNodeSharingTier" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS.CrossAdapterRowMajorTextureSupported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS.VPAndRTArrayIndexFromAnyShaderFeedingRasterizerSupportedWithoutGSEmulation" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS.ResourceHeapTier" INT,
    -- TODO D3D12_FEATURE_DATA_FORMAT_SUPPORT for many formats
    -- TODO D3D12_FEATURE_DATA_MULTISAMPLE_QUALITY_LEVELS for many formats
    -- TODO D3D12_FEATURE_DATA_FORMAT_INFO for many formats
    "D3D12_FEATURE_DATA_GPU_VIRTUAL_ADDRESS_SUPPORT.MaxGPUVirtualAddressBitsPerResource" INT, 
    "D3D12_FEATURE_DATA_GPU_VIRTUAL_ADDRESS_SUPPORT.MaxGPUVirtualAddressBitsPerProcess" INT,
    "D3D12_FEATURE_DATA_SHADER_MODEL.HighestShaderModel" INT,
    "D3D12_FEATURE_DATA_ROOT_SIGNATURE.HighestVersion" INT,
    "D3D12_FEATURE_DATA_ARCHITECTURE1.TileBasedRenderer" INT,
    "D3D12_FEATURE_DATA_ARCHITECTURE1.UMA" INT,
    "D3D12_FEATURE_DATA_ARCHITECTURE1.CacheCoherentUMA" INT,
    "D3D12_FEATURE_DATA_ARCHITECTURE1.IsolatedMMU" INT,
    "D3D12_FEATURE_DATA_FEATURE_LEVELS.MaxSupportedFeatureLevel" INT,
    "D3D12_FEATURE_DATA_SHADER_CACHE.SupportFlags" INT,
    "D3D12_FEATURE_DATA_COMMAND_QUEUE_PRIORITY.TYPE_DIRECT.PRIORITY_NORMAL.PriorityForTypeIsSupported" INT,
    "D3D12_FEATURE_DATA_COMMAND_QUEUE_PRIORITY.TYPE_DIRECT.PRIORITY_HIGH.PriorityForTypeIsSupported" INT,
    "D3D12_FEATURE_DATA_COMMAND_QUEUE_PRIORITY.TYPE_DIRECT.PRIORITY_GLOBAL_REALTIME.PriorityForTypeIsSupported" INT,
    "D3D12_FEATURE_DATA_COMMAND_QUEUE_PRIORITY.TYPE_COMPUTE.PRIORITY_NORMAL.PriorityForTypeIsSupported" INT,
    "D3D12_FEATURE_DATA_COMMAND_QUEUE_PRIORITY.TYPE_COMPUTE.PRIORITY_HIGH.PriorityForTypeIsSupported" INT,
    "D3D12_FEATURE_DATA_COMMAND_QUEUE_PRIORITY.TYPE_COMPUTE.PRIORITY_GLOBAL_REALTIME.PriorityForTypeIsSupported" INT,
    "D3D12_FEATURE_DATA_COMMAND_QUEUE_PRIORITY.TYPE_COPY.PRIORITY_NORMAL.PriorityForTypeIsSupported" INT,
    "D3D12_FEATURE_DATA_COMMAND_QUEUE_PRIORITY.TYPE_COPY.PRIORITY_HIGH.PriorityForTypeIsSupported" INT,
    "D3D12_FEATURE_DATA_COMMAND_QUEUE_PRIORITY.TYPE_COPY.PRIORITY_GLOBAL_REALTIME.PriorityForTypeIsSupported" INT,
    "D3D12_FEATURE_DATA_SERIALIZATION.HeapSerializationTier" INT,
    "D3D12_FEATURE_DATA_CROSS_NODE.SharingTier" INT,
    "D3D12_FEATURE_DATA_CROSS_NODE.AtomicShaderInstructions" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS_EXPERIMENTAL.WorkGraphsTier" INT,
    "D3D12_FEATURE_DATA_PREDICATION.Supported" INT,
    "D3D12_FEATURE_DATA_HARDWARE_COPY.Supported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS1.WaveOps" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS1.WaveLaneCountMin" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS1.WaveLaneCountMax" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS1.TotalLaneCount" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS1.ExpandedComputeResourceStates" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS1.Int64ShaderOps" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS2.DepthBoundsTestSupported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS2.ProgrammableSamplePositionsTier" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS3.CopyQueueTimestampQueriesSupported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS3.CastingFullyTypedFormatSupported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS3.WriteBufferImmediateSupportFlags" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS3.ViewInstancingTier" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS3.BarycentricsSupported" INT,
    "D3D12_FEATURE_DATA_EXISTING_HEAPS.Supported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS4.MSAA64KBAlignedTextureSupported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS4.SharedResourceCompatibilityTier" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS4.Native16BitShaderOpsSupported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS5.SRVOnlyTiledResourceTier3" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS5.RenderPassesTier" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS5.RaytracingTier" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS6.AdditionalShadingRatesSupported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS6.PerPrimitiveShadingRateSupportedWithViewportIndexing" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS6.VariableShadingRateTier" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS6.ShadingRateImageTileSize" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS6.BackgroundProcessingSupported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS7.MeshShaderTier" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS7.SamplerFeedbackTier" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS8.UnalignedBlockTexturesSupported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS9.MeshShaderPipelineStatsSupported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS9.MeshShaderSupportsFullRangeRenderTargetArrayIndex" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS9.AtomicInt64OnTypedResourceSupported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS9.AtomicInt64OnGroupSharedSupported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS9.DerivativesInMeshAndAmplificationShadersSupported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS9.WaveMMATier" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS10.VariableRateShadingSumCombinerSupported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS10.MeshShaderPerPrimitiveShadingRateSupported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS11.AtomicInt64OnDescriptorHeapResourceSupported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS12.MSPrimitivesPipelineStatisticIncludesCulledPrimitives" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS12.EnhancedBarriersSupported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS12.RelaxedFormatCastingSupported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS13.UnrestrictedBufferTextureCopyPitchSupported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS13.UnrestrictedVertexElementAlignmentSupported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS13.InvertedViewportHeightFlipsYSupported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS13.InvertedViewportDepthFlipsZSupported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS13.TextureCopyBetweenDimensionsSupported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS13.AlphaBlendFactorSupported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS14.AdvancedTextureOpsSupported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS14.WriteableMSAATexturesSupported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS14.IndependentFrontAndBackStencilRefMaskSupported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS15.TriangleFanSupported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS15.DynamicIndexBufferStripCutSupported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS16.DynamicDepthBiasSupported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS16.GPUUploadHeapSupported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS17.NonNormalizedCoordinateSamplersSupported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS17.ManualWriteTrackingResourceSupported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS18.RenderPassesValid" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS19.MismatchingOutputDimensionsSupported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS19.IndependentFrontAndBackStencilRefMaskSupported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS19.SupportedSampleCountsWithNoOutputs" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS19.PointSamplingAddressesNeverRoundUp" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS19.RasterizerDesc2Supported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS19.NarrowQuadrilateralLinesSupported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS19.AnisoFilterWithPointMipSupported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS19.MaxSamplerDescriptorHeapSize" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS19.MaxSamplerDescriptorHeapSizeWithStaticSamplers" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS19.MaxViewDescriptorHeapSize" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS19.ComputeOnlyCustomHeapSupported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS20.ComputeOnlyWriteWatchSupported" INT,
    "D3D12_FEATURE_DATA_D3D12_OPTIONS20.RecreateAtTier" INT
) STRICT;

CREATE UNIQUE INDEX IF NOT EXISTS UniqueSubmission on Submissions (
    "Header.Program",
    "Header.Version",
    "Header.Configuration bits",
    "Header.Using preview Agility SDK",
    "Header.D3D12_SDK_VERSION",
    "Header.Intel GPU Detect compiled version",
    "SystemInfo.OS Info.Windows version",
    "SystemInfo.D3D12EnableExperimentalFeatures",
    "DXGI_ADAPTER_DESC3.Description",
    "DXGI_ADAPTER_DESC3.VendorId",
    "DXGI_ADAPTER_DESC3.DeviceId",
    "DXGI_ADAPTER_DESC3.SubSysId",
    "DXGI_ADAPTER_DESC3.Revision",
    "DXGI_ADAPTER_DESC3.DedicatedVideoMemory",
    "CheckInterfaceSupport.UMDVersion"
);