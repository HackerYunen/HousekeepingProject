<template>
  <div class="container">
    <div id="header-search">
      <el-card shadow="always">
        <el-row>
          <el-col :span="21">
            <mt-search v-model="value" cancel-text="test" placeholder="搜索"></mt-search>
          </el-col>
          <el-col :span="3" :style="'text-align: center;'">
            <el-button type="text" :style="'width: 100%; height: 36px;'" ><i class="el-icon-search"></i></el-button>
          </el-col>
        </el-row>
      </el-card>
    </div>
    <div id="tag-category">
      <el-card shadow="always">
        <el-tabs :tab-position="tabPosition" style="height: 200px;">
          <el-tab-pane label="搬家服务">搬家服务</el-tab-pane>
          <el-tab-pane label="保姆月嫂">保姆月嫂</el-tab-pane>
          <el-tab-pane label="管道疏通">管道疏通</el-tab-pane>
          <el-tab-pane label="家具维修">家具维修</el-tab-pane>
          <el-tab-pane label="日常服务">日常服务</el-tab-pane>
          <el-tab-pane label="电子维修">电子维修</el-tab-pane>
        </el-tabs>
      </el-card>
    </div>
  </div>
</template>

<script>
  export default {
    data() {
      return {
        value: null,
        tabPosition: 'left'
      }
    }
  }
</script>

<style>

  #tag-category .el-tabs--left {
    height: calc(100vh - 55px - 50px - 36px - 20px - 8px) !important;
  }

  #header-search .mint-searchbar-cancel {
    display: none;
  }

  #header-search .mint-searchbar,
  #header-search .el-card__body {
    padding: 0px;
  }

  #tag-category .el-card {
    height: calc(100vh - 52px - 40px - 55px - 4px);
  }

  .mint-search {
    height: 100% !important;
  }
</style>
